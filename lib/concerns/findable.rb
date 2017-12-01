module Concerns::Findable
  def find_by_name(names)
    all.detect{ |o| o.name == name }
  end

  def find_or_create_by_name(names)
    find_by_name(name) || create(name)
  end
end
