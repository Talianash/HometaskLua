#include <stdio.h>
#include <math.h>

int main()
{
	typedef struct 
		{
		float x;
		float y;
	} dots;
	dots a;
	dots triangle[3];
	float len[3];
	int i;
	for (i = 0; i < 3; i ++) {
		scanf("%f", &a.x);
		scanf("%f", &a.y);
		triangle[i] = a;
		}
	len[0] = sqrt((triangle[1].x - triangle[0].x)*(triangle[1].x - triangle[0].x) + (triangle[1].y - triangle[0].y)*(triangle[1].y - triangle[0].y));
    len[1] = sqrt((triangle[2].x - triangle[1].x)*(triangle[2].x - triangle[1].x) + (triangle[2].y - triangle[1].y)*(triangle[2].y - triangle[1].y));
    len[2] = sqrt((triangle[2].x - triangle[0].x)*(triangle[2].x - triangle[0].x) + (triangle[2].y - triangle[0].y)*(triangle[2].y - triangle[0].y));
    float p; 
    p = (len[0] + len[1] + len[2])/2;
    float s;
    s = sqrt(p*(p-len[0])*(p-len[2])*(p-len[1]));
    printf("%f\n", s);
}