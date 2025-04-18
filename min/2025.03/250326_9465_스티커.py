import sys
input=sys.stdin.readline

T=int(input().strip())
for t in range(T):
    N = int(input().strip())
    sticker = [list(map(int, input().strip().split())) for _ in range(2)]

    dp = [[0]*N for _ in range(2)]

    for i in range(N):
        if i == 0:
            dp[0][0] = sticker[0][0]
            dp[1][0] = sticker[1][0]
        elif i == 1:
            dp[0][1] = dp[1][0] + sticker[0][1]
            dp[1][1] = dp[0][0] + sticker[1][1]
        else:
            dp[0][i] = max(dp[1][i-2], dp[1][i-1]) + sticker[0][i]
            dp[1][i] = max(dp[0][i-2], dp[0][i-1]) + sticker[1][i]

    print(max(dp[0][N-1], dp[1][N-1]))
