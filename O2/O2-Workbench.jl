#### 2. Exercise
## Traversal of linked list. Finding the highest value
## Here you find both recursive and Normal-traversal examples
## Enjoy!

## Recursive function
function traverse_recursive_max(node, start_value)
    highest_value = start_value
    if (node.value > highest_value)
        highest_value = node.value
    end
    if node.next == nothing ## We are at the last node. Return to base!
        return highest_value
    end
    traverse_recursive_max(node.next,highest_value)
end

## Normal traversal function
function traverse_normal_max(node)
    currentNode = node
    highest_value = node.value
    while true
        if currentNode.next != nothing
            currentNode = currentNode.next
        else ## We are at the last node. Return to base!
            return highest_value
        end
        if currentNode.value > highest_value
            highest_value = currentNode.value
        end
    end
end

traversemax(node) = traverse_recursive_max(node,node.value)

function traversemax(node)
    # Timing both functions to check which one is faster
    @time traverse_recursive_max(node,node.value) #<- Winner!
    @time traverse_normal_max(node) #<- Looser...
end

###########################################################
####### Scaffolding for running tests on own machine #####
#########################################################
mutable struct Record
    next::Union{Record,Nothing}  # next kan peke på et Record-objekt eller ha verdien nothing.
    value::Int
end

function create_linked_list(length, value_range)
    # Lager listen bakfra.
    next = nothing
    record = nothing
    for i in 1:length
        record = Record(next, rand(value_range))  # valuerange kan f.eks. være 1:1000.
        next = record
    end
    return record
end

a = create_linked_list(1000,-10000:100000)
########################################################
####### End of Scaffolding ############################
######################################################

#### Testing out the functions with sample data (a)
traversemax(a)
