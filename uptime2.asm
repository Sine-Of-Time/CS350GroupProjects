
_uptime2:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
    Failure to follow this instruction will lead to zero point 
	for this part */

int 
main(int argc, char * argv[])
{
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	push   -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	51                   	push   %ecx
   e:	83 ec 10             	sub    $0x10,%esp
  11:	8b 41 04             	mov    0x4(%ecx),%eax
	int i = atoi(argv[1]);
  14:	ff 70 04             	push   0x4(%eax)
  17:	e8 54 02 00 00       	call   270 <atoi>
    
    // "msg" now holds the shutdown message provided by the user
    //shutdown2(msg);
	
    if(i<1 || i>3)
  1c:	83 c4 10             	add    $0x10,%esp
  1f:	8d 50 ff             	lea    -0x1(%eax),%edx
  22:	83 fa 02             	cmp    $0x2,%edx
  25:	77 35                	ja     5c <main+0x5c>
        printf(1,"Available options for uptime output: \n[\n1=seconds,\n2=days,\n3=years\n]");
    
    uint ut = uptime2(i);

    if(i == 1){
  27:	83 f8 01             	cmp    $0x1,%eax
  2a:	74 19                	je     45 <main+0x45>
        printf(1, "Current Uptime in ticks: %d", ut);
    } else if(i == 2){
  2c:	83 f8 02             	cmp    $0x2,%eax
  2f:	74 3e                	je     6f <main+0x6f>
        printf(1, "Current Uptime in seconds: %d", ut);
    } else if(i == 3){
        printf(1, "Current Uptime in minutes: %d", ut);
  31:	50                   	push   %eax
  32:	6a 00                	push   $0x0
  34:	68 e7 07 00 00       	push   $0x7e7
  39:	6a 01                	push   $0x1
  3b:	e8 00 04 00 00       	call   440 <printf>
  40:	83 c4 10             	add    $0x10,%esp
  43:	eb 12                	jmp    57 <main+0x57>
        printf(1, "Current Uptime in ticks: %d", ut);
  45:	51                   	push   %ecx
  46:	6a 00                	push   $0x0
  48:	68 ad 07 00 00       	push   $0x7ad
  4d:	6a 01                	push   $0x1
  4f:	e8 ec 03 00 00       	call   440 <printf>
  54:	83 c4 10             	add    $0x10,%esp
    }

    exit(); //return 0;
  57:	e8 87 02 00 00       	call   2e3 <exit>
        printf(1,"Available options for uptime output: \n[\n1=seconds,\n2=days,\n3=years\n]");
  5c:	50                   	push   %eax
  5d:	50                   	push   %eax
  5e:	68 68 07 00 00       	push   $0x768
  63:	6a 01                	push   $0x1
  65:	e8 d6 03 00 00       	call   440 <printf>
    } else if(i == 3){
  6a:	83 c4 10             	add    $0x10,%esp
  6d:	eb e8                	jmp    57 <main+0x57>
        printf(1, "Current Uptime in seconds: %d", ut);
  6f:	52                   	push   %edx
  70:	6a 00                	push   $0x0
  72:	68 c9 07 00 00       	push   $0x7c9
  77:	6a 01                	push   $0x1
  79:	e8 c2 03 00 00       	call   440 <printf>
  7e:	83 c4 10             	add    $0x10,%esp
  81:	eb d4                	jmp    57 <main+0x57>
  83:	66 90                	xchg   %ax,%ax
  85:	66 90                	xchg   %ax,%ax
  87:	66 90                	xchg   %ax,%ax
  89:	66 90                	xchg   %ax,%ax
  8b:	66 90                	xchg   %ax,%ax
  8d:	66 90                	xchg   %ax,%ax
  8f:	90                   	nop

00000090 <uptime2>:
int uptime2(int i) {return 0;}
  90:	31 c0                	xor    %eax,%eax
  92:	c3                   	ret
  93:	66 90                	xchg   %ax,%ax
  95:	66 90                	xchg   %ax,%ax
  97:	66 90                	xchg   %ax,%ax
  99:	66 90                	xchg   %ax,%ax
  9b:	66 90                	xchg   %ax,%ax
  9d:	66 90                	xchg   %ax,%ax
  9f:	90                   	nop

000000a0 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
  a0:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
  a1:	31 c0                	xor    %eax,%eax
{
  a3:	89 e5                	mov    %esp,%ebp
  a5:	53                   	push   %ebx
  a6:	8b 4d 08             	mov    0x8(%ebp),%ecx
  a9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
  b0:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
  b4:	88 14 01             	mov    %dl,(%ecx,%eax,1)
  b7:	83 c0 01             	add    $0x1,%eax
  ba:	84 d2                	test   %dl,%dl
  bc:	75 f2                	jne    b0 <strcpy+0x10>
    ;
  return os;
}
  be:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  c1:	89 c8                	mov    %ecx,%eax
  c3:	c9                   	leave
  c4:	c3                   	ret
  c5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000000d0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
  d0:	55                   	push   %ebp
  d1:	89 e5                	mov    %esp,%ebp
  d3:	53                   	push   %ebx
  d4:	8b 55 08             	mov    0x8(%ebp),%edx
  d7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
  da:	0f b6 02             	movzbl (%edx),%eax
  dd:	84 c0                	test   %al,%al
  df:	75 17                	jne    f8 <strcmp+0x28>
  e1:	eb 3a                	jmp    11d <strcmp+0x4d>
  e3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  e7:	90                   	nop
  e8:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
  ec:	83 c2 01             	add    $0x1,%edx
  ef:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
  f2:	84 c0                	test   %al,%al
  f4:	74 1a                	je     110 <strcmp+0x40>
    p++, q++;
  f6:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
  f8:	0f b6 19             	movzbl (%ecx),%ebx
  fb:	38 c3                	cmp    %al,%bl
  fd:	74 e9                	je     e8 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
  ff:	29 d8                	sub    %ebx,%eax
}
 101:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 104:	c9                   	leave
 105:	c3                   	ret
 106:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 10d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 110:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 114:	31 c0                	xor    %eax,%eax
 116:	29 d8                	sub    %ebx,%eax
}
 118:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 11b:	c9                   	leave
 11c:	c3                   	ret
  return (uchar)*p - (uchar)*q;
 11d:	0f b6 19             	movzbl (%ecx),%ebx
 120:	31 c0                	xor    %eax,%eax
 122:	eb db                	jmp    ff <strcmp+0x2f>
 124:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 12b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 12f:	90                   	nop

00000130 <strlen>:

uint
strlen(char *s)
{
 130:	55                   	push   %ebp
 131:	89 e5                	mov    %esp,%ebp
 133:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 136:	80 3a 00             	cmpb   $0x0,(%edx)
 139:	74 15                	je     150 <strlen+0x20>
 13b:	31 c0                	xor    %eax,%eax
 13d:	8d 76 00             	lea    0x0(%esi),%esi
 140:	83 c0 01             	add    $0x1,%eax
 143:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 147:	89 c1                	mov    %eax,%ecx
 149:	75 f5                	jne    140 <strlen+0x10>
    ;
  return n;
}
 14b:	89 c8                	mov    %ecx,%eax
 14d:	5d                   	pop    %ebp
 14e:	c3                   	ret
 14f:	90                   	nop
  for(n = 0; s[n]; n++)
 150:	31 c9                	xor    %ecx,%ecx
}
 152:	5d                   	pop    %ebp
 153:	89 c8                	mov    %ecx,%eax
 155:	c3                   	ret
 156:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 15d:	8d 76 00             	lea    0x0(%esi),%esi

00000160 <memset>:

void*
memset(void *dst, int c, uint n)
{
 160:	55                   	push   %ebp
 161:	89 e5                	mov    %esp,%ebp
 163:	57                   	push   %edi
 164:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 167:	8b 4d 10             	mov    0x10(%ebp),%ecx
 16a:	8b 45 0c             	mov    0xc(%ebp),%eax
 16d:	89 d7                	mov    %edx,%edi
 16f:	fc                   	cld
 170:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 172:	8b 7d fc             	mov    -0x4(%ebp),%edi
 175:	89 d0                	mov    %edx,%eax
 177:	c9                   	leave
 178:	c3                   	ret
 179:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000180 <strchr>:

char*
strchr(const char *s, char c)
{
 180:	55                   	push   %ebp
 181:	89 e5                	mov    %esp,%ebp
 183:	8b 45 08             	mov    0x8(%ebp),%eax
 186:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 18a:	0f b6 10             	movzbl (%eax),%edx
 18d:	84 d2                	test   %dl,%dl
 18f:	75 12                	jne    1a3 <strchr+0x23>
 191:	eb 1d                	jmp    1b0 <strchr+0x30>
 193:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 197:	90                   	nop
 198:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 19c:	83 c0 01             	add    $0x1,%eax
 19f:	84 d2                	test   %dl,%dl
 1a1:	74 0d                	je     1b0 <strchr+0x30>
    if(*s == c)
 1a3:	38 d1                	cmp    %dl,%cl
 1a5:	75 f1                	jne    198 <strchr+0x18>
      return (char*)s;
  return 0;
}
 1a7:	5d                   	pop    %ebp
 1a8:	c3                   	ret
 1a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 1b0:	31 c0                	xor    %eax,%eax
}
 1b2:	5d                   	pop    %ebp
 1b3:	c3                   	ret
 1b4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1bb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 1bf:	90                   	nop

000001c0 <gets>:

char*
gets(char *buf, int max)
{
 1c0:	55                   	push   %ebp
 1c1:	89 e5                	mov    %esp,%ebp
 1c3:	57                   	push   %edi
 1c4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 1c5:	8d 75 e7             	lea    -0x19(%ebp),%esi
{
 1c8:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 1c9:	31 db                	xor    %ebx,%ebx
{
 1cb:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 1ce:	eb 27                	jmp    1f7 <gets+0x37>
    cc = read(0, &c, 1);
 1d0:	83 ec 04             	sub    $0x4,%esp
 1d3:	6a 01                	push   $0x1
 1d5:	56                   	push   %esi
 1d6:	6a 00                	push   $0x0
 1d8:	e8 1e 01 00 00       	call   2fb <read>
    if(cc < 1)
 1dd:	83 c4 10             	add    $0x10,%esp
 1e0:	85 c0                	test   %eax,%eax
 1e2:	7e 1d                	jle    201 <gets+0x41>
      break;
    buf[i++] = c;
 1e4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 1e8:	8b 55 08             	mov    0x8(%ebp),%edx
 1eb:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 1ef:	3c 0a                	cmp    $0xa,%al
 1f1:	74 10                	je     203 <gets+0x43>
 1f3:	3c 0d                	cmp    $0xd,%al
 1f5:	74 0c                	je     203 <gets+0x43>
  for(i=0; i+1 < max; ){
 1f7:	89 df                	mov    %ebx,%edi
 1f9:	83 c3 01             	add    $0x1,%ebx
 1fc:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 1ff:	7c cf                	jl     1d0 <gets+0x10>
 201:	89 fb                	mov    %edi,%ebx
      break;
  }
  buf[i] = '\0';
 203:	8b 45 08             	mov    0x8(%ebp),%eax
 206:	c6 04 18 00          	movb   $0x0,(%eax,%ebx,1)
  return buf;
}
 20a:	8d 65 f4             	lea    -0xc(%ebp),%esp
 20d:	5b                   	pop    %ebx
 20e:	5e                   	pop    %esi
 20f:	5f                   	pop    %edi
 210:	5d                   	pop    %ebp
 211:	c3                   	ret
 212:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 219:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000220 <stat>:

int
stat(char *n, struct stat *st)
{
 220:	55                   	push   %ebp
 221:	89 e5                	mov    %esp,%ebp
 223:	56                   	push   %esi
 224:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 225:	83 ec 08             	sub    $0x8,%esp
 228:	6a 00                	push   $0x0
 22a:	ff 75 08             	push   0x8(%ebp)
 22d:	e8 f1 00 00 00       	call   323 <open>
  if(fd < 0)
 232:	83 c4 10             	add    $0x10,%esp
 235:	85 c0                	test   %eax,%eax
 237:	78 27                	js     260 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 239:	83 ec 08             	sub    $0x8,%esp
 23c:	ff 75 0c             	push   0xc(%ebp)
 23f:	89 c3                	mov    %eax,%ebx
 241:	50                   	push   %eax
 242:	e8 f4 00 00 00       	call   33b <fstat>
  close(fd);
 247:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 24a:	89 c6                	mov    %eax,%esi
  close(fd);
 24c:	e8 ba 00 00 00       	call   30b <close>
  return r;
 251:	83 c4 10             	add    $0x10,%esp
}
 254:	8d 65 f8             	lea    -0x8(%ebp),%esp
 257:	89 f0                	mov    %esi,%eax
 259:	5b                   	pop    %ebx
 25a:	5e                   	pop    %esi
 25b:	5d                   	pop    %ebp
 25c:	c3                   	ret
 25d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 260:	be ff ff ff ff       	mov    $0xffffffff,%esi
 265:	eb ed                	jmp    254 <stat+0x34>
 267:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 26e:	66 90                	xchg   %ax,%ax

00000270 <atoi>:

int
atoi(const char *s)
{
 270:	55                   	push   %ebp
 271:	89 e5                	mov    %esp,%ebp
 273:	53                   	push   %ebx
 274:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 277:	0f be 02             	movsbl (%edx),%eax
 27a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 27d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 280:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 285:	77 1e                	ja     2a5 <atoi+0x35>
 287:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 28e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 290:	83 c2 01             	add    $0x1,%edx
 293:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 296:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 29a:	0f be 02             	movsbl (%edx),%eax
 29d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 2a0:	80 fb 09             	cmp    $0x9,%bl
 2a3:	76 eb                	jbe    290 <atoi+0x20>
  return n;
}
 2a5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 2a8:	89 c8                	mov    %ecx,%eax
 2aa:	c9                   	leave
 2ab:	c3                   	ret
 2ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000002b0 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
 2b0:	55                   	push   %ebp
 2b1:	89 e5                	mov    %esp,%ebp
 2b3:	57                   	push   %edi
 2b4:	56                   	push   %esi
 2b5:	8b 45 10             	mov    0x10(%ebp),%eax
 2b8:	8b 55 08             	mov    0x8(%ebp),%edx
 2bb:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 2be:	85 c0                	test   %eax,%eax
 2c0:	7e 13                	jle    2d5 <memmove+0x25>
 2c2:	01 d0                	add    %edx,%eax
  dst = vdst;
 2c4:	89 d7                	mov    %edx,%edi
 2c6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2cd:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 2d0:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 2d1:	39 f8                	cmp    %edi,%eax
 2d3:	75 fb                	jne    2d0 <memmove+0x20>
  return vdst;
}
 2d5:	5e                   	pop    %esi
 2d6:	89 d0                	mov    %edx,%eax
 2d8:	5f                   	pop    %edi
 2d9:	5d                   	pop    %ebp
 2da:	c3                   	ret

000002db <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 2db:	b8 01 00 00 00       	mov    $0x1,%eax
 2e0:	cd 40                	int    $0x40
 2e2:	c3                   	ret

000002e3 <exit>:
SYSCALL(exit)
 2e3:	b8 02 00 00 00       	mov    $0x2,%eax
 2e8:	cd 40                	int    $0x40
 2ea:	c3                   	ret

000002eb <wait>:
SYSCALL(wait)
 2eb:	b8 03 00 00 00       	mov    $0x3,%eax
 2f0:	cd 40                	int    $0x40
 2f2:	c3                   	ret

000002f3 <pipe>:
SYSCALL(pipe)
 2f3:	b8 04 00 00 00       	mov    $0x4,%eax
 2f8:	cd 40                	int    $0x40
 2fa:	c3                   	ret

000002fb <read>:
SYSCALL(read)
 2fb:	b8 05 00 00 00       	mov    $0x5,%eax
 300:	cd 40                	int    $0x40
 302:	c3                   	ret

00000303 <write>:
SYSCALL(write)
 303:	b8 10 00 00 00       	mov    $0x10,%eax
 308:	cd 40                	int    $0x40
 30a:	c3                   	ret

0000030b <close>:
SYSCALL(close)
 30b:	b8 15 00 00 00       	mov    $0x15,%eax
 310:	cd 40                	int    $0x40
 312:	c3                   	ret

00000313 <kill>:
SYSCALL(kill)
 313:	b8 06 00 00 00       	mov    $0x6,%eax
 318:	cd 40                	int    $0x40
 31a:	c3                   	ret

0000031b <exec>:
SYSCALL(exec)
 31b:	b8 07 00 00 00       	mov    $0x7,%eax
 320:	cd 40                	int    $0x40
 322:	c3                   	ret

00000323 <open>:
SYSCALL(open)
 323:	b8 0f 00 00 00       	mov    $0xf,%eax
 328:	cd 40                	int    $0x40
 32a:	c3                   	ret

0000032b <mknod>:
SYSCALL(mknod)
 32b:	b8 11 00 00 00       	mov    $0x11,%eax
 330:	cd 40                	int    $0x40
 332:	c3                   	ret

00000333 <unlink>:
SYSCALL(unlink)
 333:	b8 12 00 00 00       	mov    $0x12,%eax
 338:	cd 40                	int    $0x40
 33a:	c3                   	ret

0000033b <fstat>:
SYSCALL(fstat)
 33b:	b8 08 00 00 00       	mov    $0x8,%eax
 340:	cd 40                	int    $0x40
 342:	c3                   	ret

00000343 <link>:
SYSCALL(link)
 343:	b8 13 00 00 00       	mov    $0x13,%eax
 348:	cd 40                	int    $0x40
 34a:	c3                   	ret

0000034b <mkdir>:
SYSCALL(mkdir)
 34b:	b8 14 00 00 00       	mov    $0x14,%eax
 350:	cd 40                	int    $0x40
 352:	c3                   	ret

00000353 <chdir>:
SYSCALL(chdir)
 353:	b8 09 00 00 00       	mov    $0x9,%eax
 358:	cd 40                	int    $0x40
 35a:	c3                   	ret

0000035b <dup>:
SYSCALL(dup)
 35b:	b8 0a 00 00 00       	mov    $0xa,%eax
 360:	cd 40                	int    $0x40
 362:	c3                   	ret

00000363 <getpid>:
SYSCALL(getpid)
 363:	b8 0b 00 00 00       	mov    $0xb,%eax
 368:	cd 40                	int    $0x40
 36a:	c3                   	ret

0000036b <sbrk>:
SYSCALL(sbrk)
 36b:	b8 0c 00 00 00       	mov    $0xc,%eax
 370:	cd 40                	int    $0x40
 372:	c3                   	ret

00000373 <sleep>:
SYSCALL(sleep)
 373:	b8 0d 00 00 00       	mov    $0xd,%eax
 378:	cd 40                	int    $0x40
 37a:	c3                   	ret

0000037b <uptime>:
SYSCALL(uptime)
 37b:	b8 0e 00 00 00       	mov    $0xe,%eax
 380:	cd 40                	int    $0x40
 382:	c3                   	ret

00000383 <shutdown>:
SYSCALL(shutdown)
 383:	b8 16 00 00 00       	mov    $0x16,%eax
 388:	cd 40                	int    $0x40
 38a:	c3                   	ret

0000038b <exit2>:
SYSCALL(exit2)
 38b:	b8 17 00 00 00       	mov    $0x17,%eax
 390:	cd 40                	int    $0x40
 392:	c3                   	ret

00000393 <echo2>:
SYSCALL(echo2)
 393:	b8 18 00 00 00       	mov    $0x18,%eax
 398:	cd 40                	int    $0x40
 39a:	c3                   	ret
 39b:	66 90                	xchg   %ax,%ax
 39d:	66 90                	xchg   %ax,%ax
 39f:	90                   	nop

000003a0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 3a0:	55                   	push   %ebp
 3a1:	89 e5                	mov    %esp,%ebp
 3a3:	57                   	push   %edi
 3a4:	56                   	push   %esi
 3a5:	53                   	push   %ebx
 3a6:	89 cb                	mov    %ecx,%ebx
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 3a8:	89 d1                	mov    %edx,%ecx
{
 3aa:	83 ec 3c             	sub    $0x3c,%esp
 3ad:	89 45 c0             	mov    %eax,-0x40(%ebp)
  if(sgn && xx < 0){
 3b0:	85 d2                	test   %edx,%edx
 3b2:	0f 89 80 00 00 00    	jns    438 <printint+0x98>
 3b8:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 3bc:	74 7a                	je     438 <printint+0x98>
    x = -xx;
 3be:	f7 d9                	neg    %ecx
    neg = 1;
 3c0:	b8 01 00 00 00       	mov    $0x1,%eax
  } else {
    x = xx;
  }

  i = 0;
 3c5:	89 45 c4             	mov    %eax,-0x3c(%ebp)
 3c8:	31 f6                	xor    %esi,%esi
 3ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 3d0:	89 c8                	mov    %ecx,%eax
 3d2:	31 d2                	xor    %edx,%edx
 3d4:	89 f7                	mov    %esi,%edi
 3d6:	f7 f3                	div    %ebx
 3d8:	8d 76 01             	lea    0x1(%esi),%esi
 3db:	0f b6 92 64 08 00 00 	movzbl 0x864(%edx),%edx
 3e2:	88 54 35 d7          	mov    %dl,-0x29(%ebp,%esi,1)
  }while((x /= base) != 0);
 3e6:	89 ca                	mov    %ecx,%edx
 3e8:	89 c1                	mov    %eax,%ecx
 3ea:	39 da                	cmp    %ebx,%edx
 3ec:	73 e2                	jae    3d0 <printint+0x30>
  if(neg)
 3ee:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 3f1:	85 c0                	test   %eax,%eax
 3f3:	74 07                	je     3fc <printint+0x5c>
    buf[i++] = '-';
 3f5:	c6 44 35 d8 2d       	movb   $0x2d,-0x28(%ebp,%esi,1)
    buf[i++] = digits[x % base];
 3fa:	89 f7                	mov    %esi,%edi
 3fc:	8d 5d d8             	lea    -0x28(%ebp),%ebx
 3ff:	8b 75 c0             	mov    -0x40(%ebp),%esi
 402:	01 df                	add    %ebx,%edi
 404:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

  while(--i >= 0)
    putc(fd, buf[i]);
 408:	0f b6 07             	movzbl (%edi),%eax
  write(fd, &c, 1);
 40b:	83 ec 04             	sub    $0x4,%esp
 40e:	88 45 d7             	mov    %al,-0x29(%ebp)
 411:	8d 45 d7             	lea    -0x29(%ebp),%eax
 414:	6a 01                	push   $0x1
 416:	50                   	push   %eax
 417:	56                   	push   %esi
 418:	e8 e6 fe ff ff       	call   303 <write>
  while(--i >= 0)
 41d:	89 f8                	mov    %edi,%eax
 41f:	83 c4 10             	add    $0x10,%esp
 422:	83 ef 01             	sub    $0x1,%edi
 425:	39 d8                	cmp    %ebx,%eax
 427:	75 df                	jne    408 <printint+0x68>
}
 429:	8d 65 f4             	lea    -0xc(%ebp),%esp
 42c:	5b                   	pop    %ebx
 42d:	5e                   	pop    %esi
 42e:	5f                   	pop    %edi
 42f:	5d                   	pop    %ebp
 430:	c3                   	ret
 431:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 438:	31 c0                	xor    %eax,%eax
 43a:	eb 89                	jmp    3c5 <printint+0x25>
 43c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000440 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 440:	55                   	push   %ebp
 441:	89 e5                	mov    %esp,%ebp
 443:	57                   	push   %edi
 444:	56                   	push   %esi
 445:	53                   	push   %ebx
 446:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 449:	8b 75 0c             	mov    0xc(%ebp),%esi
{
 44c:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i = 0; fmt[i]; i++){
 44f:	0f b6 1e             	movzbl (%esi),%ebx
 452:	83 c6 01             	add    $0x1,%esi
 455:	84 db                	test   %bl,%bl
 457:	74 67                	je     4c0 <printf+0x80>
 459:	8d 4d 10             	lea    0x10(%ebp),%ecx
 45c:	31 d2                	xor    %edx,%edx
 45e:	89 4d d0             	mov    %ecx,-0x30(%ebp)
 461:	eb 34                	jmp    497 <printf+0x57>
 463:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 467:	90                   	nop
 468:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 46b:	ba 25 00 00 00       	mov    $0x25,%edx
      if(c == '%'){
 470:	83 f8 25             	cmp    $0x25,%eax
 473:	74 18                	je     48d <printf+0x4d>
  write(fd, &c, 1);
 475:	83 ec 04             	sub    $0x4,%esp
 478:	8d 45 e7             	lea    -0x19(%ebp),%eax
 47b:	88 5d e7             	mov    %bl,-0x19(%ebp)
 47e:	6a 01                	push   $0x1
 480:	50                   	push   %eax
 481:	57                   	push   %edi
 482:	e8 7c fe ff ff       	call   303 <write>
 487:	8b 55 d4             	mov    -0x2c(%ebp),%edx
      } else {
        putc(fd, c);
 48a:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 48d:	0f b6 1e             	movzbl (%esi),%ebx
 490:	83 c6 01             	add    $0x1,%esi
 493:	84 db                	test   %bl,%bl
 495:	74 29                	je     4c0 <printf+0x80>
    c = fmt[i] & 0xff;
 497:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
 49a:	85 d2                	test   %edx,%edx
 49c:	74 ca                	je     468 <printf+0x28>
      }
    } else if(state == '%'){
 49e:	83 fa 25             	cmp    $0x25,%edx
 4a1:	75 ea                	jne    48d <printf+0x4d>
      if(c == 'd'){
 4a3:	83 f8 25             	cmp    $0x25,%eax
 4a6:	0f 84 24 01 00 00    	je     5d0 <printf+0x190>
 4ac:	83 e8 63             	sub    $0x63,%eax
 4af:	83 f8 15             	cmp    $0x15,%eax
 4b2:	77 1c                	ja     4d0 <printf+0x90>
 4b4:	ff 24 85 0c 08 00 00 	jmp    *0x80c(,%eax,4)
 4bb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 4bf:	90                   	nop
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 4c0:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4c3:	5b                   	pop    %ebx
 4c4:	5e                   	pop    %esi
 4c5:	5f                   	pop    %edi
 4c6:	5d                   	pop    %ebp
 4c7:	c3                   	ret
 4c8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4cf:	90                   	nop
  write(fd, &c, 1);
 4d0:	83 ec 04             	sub    $0x4,%esp
 4d3:	8d 55 e7             	lea    -0x19(%ebp),%edx
 4d6:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 4da:	6a 01                	push   $0x1
 4dc:	52                   	push   %edx
 4dd:	89 55 d4             	mov    %edx,-0x2c(%ebp)
 4e0:	57                   	push   %edi
 4e1:	e8 1d fe ff ff       	call   303 <write>
 4e6:	83 c4 0c             	add    $0xc,%esp
 4e9:	88 5d e7             	mov    %bl,-0x19(%ebp)
 4ec:	6a 01                	push   $0x1
 4ee:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 4f1:	52                   	push   %edx
 4f2:	57                   	push   %edi
 4f3:	e8 0b fe ff ff       	call   303 <write>
        putc(fd, c);
 4f8:	83 c4 10             	add    $0x10,%esp
      state = 0;
 4fb:	31 d2                	xor    %edx,%edx
 4fd:	eb 8e                	jmp    48d <printf+0x4d>
 4ff:	90                   	nop
        printint(fd, *ap, 16, 0);
 500:	8b 5d d0             	mov    -0x30(%ebp),%ebx
 503:	83 ec 0c             	sub    $0xc,%esp
 506:	b9 10 00 00 00       	mov    $0x10,%ecx
 50b:	8b 13                	mov    (%ebx),%edx
 50d:	6a 00                	push   $0x0
 50f:	89 f8                	mov    %edi,%eax
        ap++;
 511:	83 c3 04             	add    $0x4,%ebx
        printint(fd, *ap, 16, 0);
 514:	e8 87 fe ff ff       	call   3a0 <printint>
        ap++;
 519:	89 5d d0             	mov    %ebx,-0x30(%ebp)
 51c:	83 c4 10             	add    $0x10,%esp
      state = 0;
 51f:	31 d2                	xor    %edx,%edx
 521:	e9 67 ff ff ff       	jmp    48d <printf+0x4d>
 526:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 52d:	8d 76 00             	lea    0x0(%esi),%esi
        s = (char*)*ap;
 530:	8b 45 d0             	mov    -0x30(%ebp),%eax
 533:	8b 18                	mov    (%eax),%ebx
        ap++;
 535:	83 c0 04             	add    $0x4,%eax
 538:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 53b:	85 db                	test   %ebx,%ebx
 53d:	0f 84 9d 00 00 00    	je     5e0 <printf+0x1a0>
        while(*s != 0){
 543:	0f b6 03             	movzbl (%ebx),%eax
      state = 0;
 546:	31 d2                	xor    %edx,%edx
        while(*s != 0){
 548:	84 c0                	test   %al,%al
 54a:	0f 84 3d ff ff ff    	je     48d <printf+0x4d>
 550:	8d 55 e7             	lea    -0x19(%ebp),%edx
 553:	89 75 d4             	mov    %esi,-0x2c(%ebp)
 556:	89 de                	mov    %ebx,%esi
 558:	89 d3                	mov    %edx,%ebx
 55a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 560:	83 ec 04             	sub    $0x4,%esp
 563:	88 45 e7             	mov    %al,-0x19(%ebp)
          s++;
 566:	83 c6 01             	add    $0x1,%esi
  write(fd, &c, 1);
 569:	6a 01                	push   $0x1
 56b:	53                   	push   %ebx
 56c:	57                   	push   %edi
 56d:	e8 91 fd ff ff       	call   303 <write>
        while(*s != 0){
 572:	0f b6 06             	movzbl (%esi),%eax
 575:	83 c4 10             	add    $0x10,%esp
 578:	84 c0                	test   %al,%al
 57a:	75 e4                	jne    560 <printf+0x120>
      state = 0;
 57c:	8b 75 d4             	mov    -0x2c(%ebp),%esi
 57f:	31 d2                	xor    %edx,%edx
 581:	e9 07 ff ff ff       	jmp    48d <printf+0x4d>
 586:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 58d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 590:	8b 5d d0             	mov    -0x30(%ebp),%ebx
 593:	83 ec 0c             	sub    $0xc,%esp
 596:	b9 0a 00 00 00       	mov    $0xa,%ecx
 59b:	8b 13                	mov    (%ebx),%edx
 59d:	6a 01                	push   $0x1
 59f:	e9 6b ff ff ff       	jmp    50f <printf+0xcf>
 5a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, *ap);
 5a8:	8b 5d d0             	mov    -0x30(%ebp),%ebx
  write(fd, &c, 1);
 5ab:	83 ec 04             	sub    $0x4,%esp
 5ae:	8d 55 e7             	lea    -0x19(%ebp),%edx
        putc(fd, *ap);
 5b1:	8b 03                	mov    (%ebx),%eax
        ap++;
 5b3:	83 c3 04             	add    $0x4,%ebx
        putc(fd, *ap);
 5b6:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 5b9:	6a 01                	push   $0x1
 5bb:	52                   	push   %edx
 5bc:	57                   	push   %edi
 5bd:	e8 41 fd ff ff       	call   303 <write>
        ap++;
 5c2:	89 5d d0             	mov    %ebx,-0x30(%ebp)
 5c5:	83 c4 10             	add    $0x10,%esp
      state = 0;
 5c8:	31 d2                	xor    %edx,%edx
 5ca:	e9 be fe ff ff       	jmp    48d <printf+0x4d>
 5cf:	90                   	nop
  write(fd, &c, 1);
 5d0:	83 ec 04             	sub    $0x4,%esp
 5d3:	88 5d e7             	mov    %bl,-0x19(%ebp)
 5d6:	8d 55 e7             	lea    -0x19(%ebp),%edx
 5d9:	6a 01                	push   $0x1
 5db:	e9 11 ff ff ff       	jmp    4f1 <printf+0xb1>
 5e0:	b8 28 00 00 00       	mov    $0x28,%eax
          s = "(null)";
 5e5:	bb 05 08 00 00       	mov    $0x805,%ebx
 5ea:	e9 61 ff ff ff       	jmp    550 <printf+0x110>
 5ef:	90                   	nop

000005f0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 5f0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 5f1:	a1 14 0b 00 00       	mov    0xb14,%eax
{
 5f6:	89 e5                	mov    %esp,%ebp
 5f8:	57                   	push   %edi
 5f9:	56                   	push   %esi
 5fa:	53                   	push   %ebx
 5fb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 5fe:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 601:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 608:	89 c2                	mov    %eax,%edx
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 60a:	8b 00                	mov    (%eax),%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 60c:	39 ca                	cmp    %ecx,%edx
 60e:	73 30                	jae    640 <free+0x50>
 610:	39 c1                	cmp    %eax,%ecx
 612:	72 04                	jb     618 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 614:	39 c2                	cmp    %eax,%edx
 616:	72 f0                	jb     608 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 618:	8b 73 fc             	mov    -0x4(%ebx),%esi
 61b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 61e:	39 f8                	cmp    %edi,%eax
 620:	74 2e                	je     650 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 622:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 625:	8b 42 04             	mov    0x4(%edx),%eax
 628:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 62b:	39 f1                	cmp    %esi,%ecx
 62d:	74 38                	je     667 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 62f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 631:	5b                   	pop    %ebx
  freep = p;
 632:	89 15 14 0b 00 00    	mov    %edx,0xb14
}
 638:	5e                   	pop    %esi
 639:	5f                   	pop    %edi
 63a:	5d                   	pop    %ebp
 63b:	c3                   	ret
 63c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 640:	39 c1                	cmp    %eax,%ecx
 642:	72 d0                	jb     614 <free+0x24>
 644:	eb c2                	jmp    608 <free+0x18>
 646:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 64d:	8d 76 00             	lea    0x0(%esi),%esi
    bp->s.size += p->s.ptr->s.size;
 650:	03 70 04             	add    0x4(%eax),%esi
 653:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 656:	8b 02                	mov    (%edx),%eax
 658:	8b 00                	mov    (%eax),%eax
 65a:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 65d:	8b 42 04             	mov    0x4(%edx),%eax
 660:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 663:	39 f1                	cmp    %esi,%ecx
 665:	75 c8                	jne    62f <free+0x3f>
    p->s.size += bp->s.size;
 667:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 66a:	89 15 14 0b 00 00    	mov    %edx,0xb14
    p->s.size += bp->s.size;
 670:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 673:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 676:	89 0a                	mov    %ecx,(%edx)
}
 678:	5b                   	pop    %ebx
 679:	5e                   	pop    %esi
 67a:	5f                   	pop    %edi
 67b:	5d                   	pop    %ebp
 67c:	c3                   	ret
 67d:	8d 76 00             	lea    0x0(%esi),%esi

00000680 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 680:	55                   	push   %ebp
 681:	89 e5                	mov    %esp,%ebp
 683:	57                   	push   %edi
 684:	56                   	push   %esi
 685:	53                   	push   %ebx
 686:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 689:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 68c:	8b 15 14 0b 00 00    	mov    0xb14,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 692:	8d 78 07             	lea    0x7(%eax),%edi
 695:	c1 ef 03             	shr    $0x3,%edi
 698:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 69b:	85 d2                	test   %edx,%edx
 69d:	0f 84 8d 00 00 00    	je     730 <malloc+0xb0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 6a3:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 6a5:	8b 48 04             	mov    0x4(%eax),%ecx
 6a8:	39 f9                	cmp    %edi,%ecx
 6aa:	73 64                	jae    710 <malloc+0x90>
  if(nu < 4096)
 6ac:	bb 00 10 00 00       	mov    $0x1000,%ebx
 6b1:	39 df                	cmp    %ebx,%edi
 6b3:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
 6b6:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
 6bd:	eb 0a                	jmp    6c9 <malloc+0x49>
 6bf:	90                   	nop
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 6c0:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 6c2:	8b 48 04             	mov    0x4(%eax),%ecx
 6c5:	39 f9                	cmp    %edi,%ecx
 6c7:	73 47                	jae    710 <malloc+0x90>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 6c9:	89 c2                	mov    %eax,%edx
 6cb:	39 05 14 0b 00 00    	cmp    %eax,0xb14
 6d1:	75 ed                	jne    6c0 <malloc+0x40>
  p = sbrk(nu * sizeof(Header));
 6d3:	83 ec 0c             	sub    $0xc,%esp
 6d6:	56                   	push   %esi
 6d7:	e8 8f fc ff ff       	call   36b <sbrk>
  if(p == (char*)-1)
 6dc:	83 c4 10             	add    $0x10,%esp
 6df:	83 f8 ff             	cmp    $0xffffffff,%eax
 6e2:	74 1c                	je     700 <malloc+0x80>
  hp->s.size = nu;
 6e4:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 6e7:	83 ec 0c             	sub    $0xc,%esp
 6ea:	83 c0 08             	add    $0x8,%eax
 6ed:	50                   	push   %eax
 6ee:	e8 fd fe ff ff       	call   5f0 <free>
  return freep;
 6f3:	8b 15 14 0b 00 00    	mov    0xb14,%edx
      if((p = morecore(nunits)) == 0)
 6f9:	83 c4 10             	add    $0x10,%esp
 6fc:	85 d2                	test   %edx,%edx
 6fe:	75 c0                	jne    6c0 <malloc+0x40>
        return 0;
  }
}
 700:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 703:	31 c0                	xor    %eax,%eax
}
 705:	5b                   	pop    %ebx
 706:	5e                   	pop    %esi
 707:	5f                   	pop    %edi
 708:	5d                   	pop    %ebp
 709:	c3                   	ret
 70a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 710:	39 cf                	cmp    %ecx,%edi
 712:	74 4c                	je     760 <malloc+0xe0>
        p->s.size -= nunits;
 714:	29 f9                	sub    %edi,%ecx
 716:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 719:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 71c:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
 71f:	89 15 14 0b 00 00    	mov    %edx,0xb14
}
 725:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 728:	83 c0 08             	add    $0x8,%eax
}
 72b:	5b                   	pop    %ebx
 72c:	5e                   	pop    %esi
 72d:	5f                   	pop    %edi
 72e:	5d                   	pop    %ebp
 72f:	c3                   	ret
    base.s.ptr = freep = prevp = &base;
 730:	c7 05 14 0b 00 00 18 	movl   $0xb18,0xb14
 737:	0b 00 00 
    base.s.size = 0;
 73a:	b8 18 0b 00 00       	mov    $0xb18,%eax
    base.s.ptr = freep = prevp = &base;
 73f:	c7 05 18 0b 00 00 18 	movl   $0xb18,0xb18
 746:	0b 00 00 
    base.s.size = 0;
 749:	c7 05 1c 0b 00 00 00 	movl   $0x0,0xb1c
 750:	00 00 00 
    if(p->s.size >= nunits){
 753:	e9 54 ff ff ff       	jmp    6ac <malloc+0x2c>
 758:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 75f:	90                   	nop
        prevp->s.ptr = p->s.ptr;
 760:	8b 08                	mov    (%eax),%ecx
 762:	89 0a                	mov    %ecx,(%edx)
 764:	eb b9                	jmp    71f <malloc+0x9f>
