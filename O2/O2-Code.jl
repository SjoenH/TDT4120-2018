#Found using a recursive function to be the Fastest. Take a look in the O2-Workbench.jl for other ways
function traverse_recursive_max(node, start_value)
    highest_value = start_value
    if (node.value > highest_value)
        highest_value = node.value
    end
    if node.next == nothing
        return highest_value
    end
    traverse_recursive_max(node.next,highest_value)
end

traversemax(node) = traverse_recursive_max(node,node.value)
