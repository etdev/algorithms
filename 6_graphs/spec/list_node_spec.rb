require_relative "../lib/graph/list_graph/list_node"

describe ListNode do
  describe "to_s" do
    it "returns 'nil' when blank" do
      node = ListNode.new
      expect(node.to_s).to eq("nil")
    end

    it "returns val when single node" do
      node = ListNode.new(5)
      expect(node.to_s).to eq("5")
    end

    it "returns list of vals when multiple nodes" do
      node = ListNode.new(5)
      node.next = ListNode.new(6)
      expect(node.to_s).to eq("5 -> 6")
    end
  end

  describe "add" do
    it "successfully adds elements" do
      list = ListNode.new(5)
      list.add(6)
      list.add(7)
      expect(list.to_s).to eq("5 -> 6 -> 7")
    end
  end

  describe "remove" do
    it "successfully sets to nil when single element and matching" do
      list = ListNode.new(5)
      list.remove(5)
      expect(list.to_s).to eq("nil")
    end

    it "does nothing when single element and non-matching" do
      list = ListNode.new(5)
      list.remove(6)
      expect(list.to_s).to eq("5")
    end

    it "successfully removes element when multiple elements" do
      list = ListNode.new(5)
      list.add(6)
      list.add(7)

      list.remove(6)

      expect(list.to_s).to eq("5 -> 7")
    end

    it "does nothing when multiple elements and non-matching" do
      list = ListNode.new(5)
      list.add(6)
      list.add(7)

      list.remove(8)

      expect(list.to_s).to eq("5 -> 6 -> 7")
    end
  end

  describe "contains?" do
    it "returns false when val not in list" do
      list = ListNode.new(1)
      list.add(2)
      list.add(3)

      expect(list.contains?(4)).to be false
    end

    it "returns true when val in list" do
      list = ListNode.new(1)
      list.add(2)
      list.add(3)

      expect(list.contains?(3)).to be true
    end
  end

  describe "to_a" do
    context "empty list" do
      it "returns empty array" do
        list = ListNode.new

        expect(list.to_a).to eq([])
      end
    end

    context "multi-element list" do
      it "returns an array representation of the list defined by node" do
        list = ListNode.new(1)
        list.add(2)
        list.add(3)

        expect(list.to_a).to eq([1,2,3])
      end
    end
  end
end
