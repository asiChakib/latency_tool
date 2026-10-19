
int main()
{
    int x = 10;
    int y = 20;
    volatile int result;

    for (int i = 0; i < 1000; ++i)
    {
        result = x * y;
        ++x;
    }
}
