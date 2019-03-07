class User < ApplicationRecord
  belongs_to :family_goal, optional: true

  validates_presence_of :nombre, :cargo, :area, :mundo

  scope :search, ->(words) {
    return all  if words.blank?

    terms = words.downcase.split(/\s+/)
    terms = terms.map do |e|
      ('%' + e.tr("*", "%") + "%").gsub(/%+/, "%")
    end

    num_or_conds = 4
    query = terms.map do |_term|
            "(LOWER(users.nombre) LIKE ? OR
            LOWER(users.cargo) LIKE ? OR
            LOWER(users.area) LIKE ? OR
            LOWER(users.mundo) LIKE ?)"
      end.join(" AND ")
    where(query, *terms.map { |e| [e] * num_or_conds }.flatten)
  }
end
