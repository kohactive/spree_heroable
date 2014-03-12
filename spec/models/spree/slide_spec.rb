require 'spec_helper'

describe Spree::Slide do
 
  it { should belong_to(:heroable)}
  it { should have_one(:image) }
  it { should accept_nested_attributes_for(:image) }

end
