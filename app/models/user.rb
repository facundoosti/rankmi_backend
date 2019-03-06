class User < ApplicationRecord
  has_one :family_goal

  scope :search_query, ->(query) {
    return nil  if query.blank?

    terms = query.downcase.split(/\s+/)
    terms = terms.map do |e|
      (e.tr("*", "%") + "%").gsub(/%+/, "%")
    end

    num_or_conds = 4
    where(
      terms.map do |_term|
        "(  LOWER(users.nombre) LIKE ? OR
            LOWER(users.cargo) LIKE ? OR
            LOWER(users.area) LIKE ? OR
            LOWER(users.mundo) LIKE ?)"
      end.join(" AND "),
      *terms.map { |e| [e] * num_or_conds }.flatten,
    )
  }
end
