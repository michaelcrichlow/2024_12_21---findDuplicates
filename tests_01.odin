package test

import "core:fmt"
print :: fmt.println

main :: proc() {
	print(findDuplicates([]int{4, 3, 2, 7, 8, 2, 3, 1}))

	free_all(context.temp_allocator)
}

findDuplicates :: proc(l: []int) -> []int {
	local_array := make([dynamic]int, context.temp_allocator)
	local_dict := make(map[int]struct {}, context.temp_allocator)

	for val in l {
		if val not_in local_dict {
			local_dict[val] = {}
		} else {
			append(&local_array, val)
		}
	}

	return local_array[:]
}
