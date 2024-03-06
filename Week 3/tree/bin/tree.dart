class TreeNode {
  int data;
  TreeNode? left;
  TreeNode? right;
  
  TreeNode(this.data);
}

bool isValidBST(TreeNode? root) {
  return isValidBSTHelper(root, null, null);
}

bool isValidBSTHelper(TreeNode? node, int? min, int? max) {
  if (node == null) {
    return true;
  }

  if ((min != null && node.data <= min) || (max != null && node.data >= max)) {
    return false;
  }

  return isValidBSTHelper(node.left, min, node.data) && isValidBSTHelper(node.right, node.data, max);
}

void main() {
  TreeNode tree1 = TreeNode(2);
  tree1.left = TreeNode(1);
  tree1.right = TreeNode(3);
  print(isValidBST(tree1));  // Output: true

  TreeNode tree2 = TreeNode(5);
  tree2.left = TreeNode(1);
  tree2.right = TreeNode(4);
  tree2.right?.left = TreeNode(3);
  tree2.right?.right = TreeNode(6);
  print(isValidBST(tree2));  // Output: false
}