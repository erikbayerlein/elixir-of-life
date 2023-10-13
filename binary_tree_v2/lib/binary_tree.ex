defmodule BinaryTree do

  @enforce_keys [:key, :value, :left, :right]
  defstruct key: 0, value: 0, left: nil, right: nil
  @type binTree :: %BinaryTree {
    key: Atom.t,
    value: Integer.t,
    left: nil | binTree,
    right: nil | binTree
  }

  @spec binTree(atom, integer, binTree, binTree) :: binTree
  def binTree(key, value, left, right) do
    %BinaryTree{key: key, value: value, left: left, right: right}
  end

end
