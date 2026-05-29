require_relative '../../../spec_helper'
require_relative '../shared/each'

describe "Enumerator::Lazy#each" do
  describe "passing source-yielded arguments to the block (matches Enumerator#each)" do
    before :each do
      @object = -> e { e.lazy }
    end
    it_behaves_like :enum_each, nil
  end
end
