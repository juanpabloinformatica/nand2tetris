import random
from pprint import pprint


def mult(r0, r1) -> None:
    register = [0 for x in range(3)]
    # Select register R0
    # Select register R1
    # Acumulate sum
    # sum has to be assigned to R2
    register[0] = r0
    register[1] = r1
    pprint(register)
    i = 1
    sum = 0
    while i <= register[1]:
        sum = sum + register[0]
        i += 1
    register[2] = sum
    print(f"R[2]: {register[2]}")


def main() -> None:
    for i in range(5):
        r0 = random.randrange(0, 9) * (i + 1)
        r1 = random.randrange(0, 9) * (i + 1)
        print(f"R0 -> {r0 } ")
        print(f"R1 -> {r1 } ")
        print(f"{i+1}")
        mult(r0, r1)
        print("************")

    pass


if __name__ == "__main__":
    main()
