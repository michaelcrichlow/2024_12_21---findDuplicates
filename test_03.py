def findDuplicates(l: list[int]) -> list[int]:
    local_array = []
    local_dict = dict()
    for val in l:
        if val not in local_dict:
            local_dict[val] = 0
        else:
            local_array.append(val)

    return local_array


def main() -> None:
    print(findDuplicates([4, 3, 2, 7, 8, 2, 3, 1]))


if __name__ == '__main__':
    main()

    # findDuplicates([4,3,2,7,8,2,3,1]) => [2,3]
