defmodule DepthFirst do

  @scale 30

  # base case when the tree is nil
  def depthFirst(nil, _, _), do: {nil, 0.0}

  def depthFirst(%BinaryTree{key: key, value: value, left: left, right: right}, level, leftLim) do
    y = @scale * level

    case true do
        # case of left: tree and right: tree
      _ when left != nil and right != nil ->
        {l_root_x, l_rightLim} = depthFirst(left, level + 1, leftLim)
        r_leftLim = l_rightLim + @scale
        {r_root_x, rightLim} = depthFirst(right, level + 1, r_leftLim)
        x = div(l_root_x + r_root_x, 2)
        IO.inspect({ %{key: key, val: value}, x, y })
        {x, rightLim}

        # case of left: nil and right: tree
      _ when left == nil and right != nil ->
        {root_x, rightLim} = depthFirst(right, level + 1, leftLim)
        y = @scale * level
        x = root_x
        IO.inspect({ %{key: key, val: value}, x, y })
        {root_x, rightLim}

        # case of left: tree and right: nil
      _ when left != nil and right == nil ->
        {root_x, rightLim} = depthFirst(left, level + 1, leftLim)
        y = @scale * level
        x = root_x
        IO.inspect({ %{key: key, val: value}, x, y })
        {root_x, rightLim}

        # case of left: nil and right: nil
      _ when left == nil and right == nil ->
        x = root_x = rightLim = leftLim
        IO.inspect({ %{key: key, val: value}, x, y })
        {root_x, rightLim}
    end

  end

end


binTree =
  BinaryTree.binTree(:a, 111,
    BinaryTree.binTree(:b, 55,
      BinaryTree.binTree(:x, 100,
        BinaryTree.binTree(:z, 56, nil, nil),
        BinaryTree.binTree(:w, 23, nil, nil)
      ),
      BinaryTree.binTree(:y, 105, nil,
        BinaryTree.binTree(:r, 77, nil, nil)
      )
    ),
    BinaryTree.binTree(:c, 123,
      BinaryTree.binTree(:d, 119,
        BinaryTree.binTree(:g, 44, nil, nil),
        BinaryTree.binTree(:h, 50,
          BinaryTree.binTree(:i, 5, nil, nil),
          BinaryTree.binTree(:j, 6, nil, nil)
        )
      ),
      BinaryTree.binTree(:e, 133, nil, nil)
    )
  )

DepthFirst.depthFirst(binTree, 1, 30)
