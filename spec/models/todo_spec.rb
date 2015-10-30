require 'rails_helper'

describe Todo do
  it{is_expected.to validate_presence_of :task}
  it{is_expected.to respond_to :task}
end
