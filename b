#include &lt;stdio.h&gt;
#include&lt;stdlib.h&gt;
int main()
{
printf(&quot;Enter the input string: &quot;);
char ch , inp[20];//input string
scanf(&quot;%s&quot;,inp);
int i=0,state=1;
while(inp[i]!=&#39;\0&#39;)
{
ch=inp[i];
switch(state)
{
case 1:if(ch==&#39;a&#39;)
{
state=2;
}
else if(ch==&#39;b&#39;)

{
state=4;
}
else
{
printf(&quot;invalid token&quot;);
exit(0);
}
break;
case 2:if(ch==&#39;a&#39;)
{
state=3;
}
else if(ch==&#39;b&#39;)
{
state=4;
}
else
{
printf(&quot;invalid token&quot;);
exit(0);
}
break;
case 3:if(ch==&#39;a&#39;)
{
state=3;
}
else if(ch==&#39;b&#39;)
{

state=4;
}
else
{
printf(&quot;invalid token&quot;);
exit(0);
}
break;
case 4:if(ch==&#39;a&#39;)
{
state=2;

}
else if(ch==&#39;b&#39;)
{
state=5;
}
else
{
printf(&quot;invalid token&quot;);
exit(0);
}
break;
case 5:if(ch==&#39;a&#39;)
{
state=2;
}
else if(ch==&#39;b&#39;)
{

state=5;
}
else
{
printf(&quot;invalid token&quot;);
exit(0);
}
break;
}
i++;
}
if(state==3||state==5)
{
printf(&quot; String is accepted&quot;);
}
else
{
printf(&quot; String is not accepted&quot;);
}
return 0;
}
