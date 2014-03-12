require 'spec_helper'

describe Spree::Product do

  it { should have_many(:slides) }
  it { should accept_nested_attributes_for(:slides) }

end