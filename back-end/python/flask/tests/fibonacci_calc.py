def fibonacci(position: int) -> int:
    if position <= 1:
        return position

    return fibonacci(position - 2) + (position - 1)