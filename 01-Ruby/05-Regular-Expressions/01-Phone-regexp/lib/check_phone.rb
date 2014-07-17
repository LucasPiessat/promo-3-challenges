def french_phone_number?(phone_number)
  !!(phone_number =~ /((00|\+)33|0)\D?[1-9](\D?\d\d){4}/)

  # TODO: true or false?
end
