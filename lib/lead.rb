class LeadBookBuilder::Lead
    attr_reader :first_name, :last_name, :clinic_name, :street_address, :city, :state, :zip, :phone_number, :fax_number, :website
    @@all =[]

    def self.all
        return @@all
    end

    def save
        @@all << self
    end

    def self.new_from_json(passed_json)
        passed_json

    end
end