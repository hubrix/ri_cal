module RiCal
  #- ©2009 Rick DeNatale
  #- All rights reserved. Refer to the file README.txt for the license
  #
  # FloatingTimezone represents the 'time zone' for a time or date time with no timezone
  # Times with floating timezones are always interpreted in the timezone of the observer
  class FloatingTimezone

    def self.identifier #:nodoc:
      nil
    end

    def self.tzinfo_timezone #:nodoc:
      nil
    end

  def self.rational_utc_offset(local)
    Rational(0, 24)
  end

    # Return the time unchanged #:nodoc:
    def self.utc_to_local(time)
      time.with_floating_timezone.to_ri_cal_date_time_value
    end

    # Return the time unchanged #:nodoc:
    def self.local_to_utc(time)
      time.with_floating_timezone.to_ri_cal_date_time_value
    end
  end

end