class Search < ApplicationRecord
    def search_profiles
        profiles = Profile.all

        profiles = profiles.where(["name LIKE ?","%#{name}%"]) if name.present?
        profiles = profiles.where(["name LIKE ?","%#{sex}%"]) if sex.present?
        profiles = profiles.where(["name LIKE ?","%#{orientation}%"]) if orientation.present?
        profiles = profiles.where(["name LIKE ?","%#{about_me}%"]) if about_me.present?
        profiles = profiles.where(["name LIKE ?","%#{work_education}%"]) if work_education.present?
        profiles = profiles.where(["name LIKE ?","%#{location}%"]) if location.present?
        profiles = profiles.where(["name LIKE ?","%#{looking_for}%"]) if looking_for.present?

        return profiles
    end
end
