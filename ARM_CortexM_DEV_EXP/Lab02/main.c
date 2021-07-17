int if_else_condition(int val)
{
    if (val == 1)
        val = 0;
    else if (val == 3)
        val = 0;
    else if (val == 5)
        val = 0;
    else
        val = 1;
    return val;
}

int main()
{
    int a = 10;
    a = if_else_condition(a);

    return 0;
}