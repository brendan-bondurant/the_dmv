class Dmv
attr_reader :facilities, :services
  def initialize
    @facilities = []
    @services = []
  end

  def add_facility(facility)
    @facilities << facility
  end

  def facilities_offering_service(service)
    @facilities.select do |facility|
      facility.services.include?(service)
    end
  end
end
