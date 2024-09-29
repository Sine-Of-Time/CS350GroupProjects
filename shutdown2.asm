
_shutdown2:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
    Failure to follow this instruction will lead to zero point 
	for this part */

int 
main(int argc, char * argv[])
{
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
	char msg[128] = {0};
   7:	31 c0                	xor    %eax,%eax
{
   9:	ff 71 fc             	push   -0x4(%ecx)
   c:	55                   	push   %ebp
   d:	89 e5                	mov    %esp,%ebp
   f:	57                   	push   %edi
  10:	56                   	push   %esi
	char msg[128] = {0};
  11:	8d bd 6c ff ff ff    	lea    -0x94(%ebp),%edi
{
  17:	53                   	push   %ebx
  18:	51                   	push   %ecx
  19:	81 ec 98 00 00 00    	sub    $0x98,%esp
  1f:	8b 11                	mov    (%ecx),%edx
  21:	8b 59 04             	mov    0x4(%ecx),%ebx
	char msg[128] = {0};
  24:	b9 1f 00 00 00       	mov    $0x1f,%ecx
  29:	f3 ab                	rep stos %eax,%es:(%edi)
  2b:	c7 85 68 ff ff ff 00 	movl   $0x0,-0x98(%ebp)
  32:	00 00 00 
{
  35:	89 95 64 ff ff ff    	mov    %edx,-0x9c(%ebp)
	char * p = msg;
	int i = 0;
	 
    for (i = 1; i < argc; i++) 
  3b:	83 fa 01             	cmp    $0x1,%edx
  3e:	7e 4e                	jle    8e <main+0x8e>
  40:	be 01 00 00 00       	mov    $0x1,%esi
	char * p = msg;
  45:	8d bd 68 ff ff ff    	lea    -0x98(%ebp),%edi
  4b:	eb 12                	jmp    5f <main+0x5f>
  4d:	8d 76 00             	lea    0x0(%esi),%esi
			p = msg + sizeof(msg);
			break;
		}
		else
		{
			*(p - 1) = ' ';
  50:	c6 47 ff 20          	movb   $0x20,-0x1(%edi)
    for (i = 1; i < argc; i++) 
  54:	83 c6 01             	add    $0x1,%esi
  57:	39 b5 64 ff ff ff    	cmp    %esi,-0x9c(%ebp)
  5d:	74 26                	je     85 <main+0x85>
	    strcpy(p, argv[i]);
  5f:	83 ec 08             	sub    $0x8,%esp
  62:	ff 34 b3             	push   (%ebx,%esi,4)
  65:	57                   	push   %edi
  66:	e8 45 00 00 00       	call   b0 <strcpy>
		p += strlen(argv[i]) + 1;
  6b:	58                   	pop    %eax
  6c:	ff 34 b3             	push   (%ebx,%esi,4)
  6f:	e8 cc 00 00 00       	call   140 <strlen>
		if (p >= msg + sizeof(msg))
  74:	83 c4 10             	add    $0x10,%esp
		p += strlen(argv[i]) + 1;
  77:	8d 7c 07 01          	lea    0x1(%edi,%eax,1),%edi
		if (p >= msg + sizeof(msg))
  7b:	8d 45 e8             	lea    -0x18(%ebp),%eax
  7e:	39 c7                	cmp    %eax,%edi
  80:	72 ce                	jb     50 <main+0x50>
			p = msg + sizeof(msg);
  82:	8d 7d e8             	lea    -0x18(%ebp),%edi
		}
	}
	
	*(p - 1) = 0;
  85:	c6 47 ff 00          	movb   $0x0,-0x1(%edi)
	
	// "msg" now holds the shutdown message provided by the user
    shutdown2(msg);
	
    exit(); //return 0;
  89:	e8 65 02 00 00       	call   2f3 <exit>
	char * p = msg;
  8e:	8d bd 68 ff ff ff    	lea    -0x98(%ebp),%edi
  94:	eb ef                	jmp    85 <main+0x85>
  96:	66 90                	xchg   %ax,%ax
  98:	66 90                	xchg   %ax,%ax
  9a:	66 90                	xchg   %ax,%ax
  9c:	66 90                	xchg   %ax,%ax
  9e:	66 90                	xchg   %ax,%ax

000000a0 <shutdown2>:
void shutdown2(char * msg) {}
  a0:	c3                   	ret
  a1:	66 90                	xchg   %ax,%ax
  a3:	66 90                	xchg   %ax,%ax
  a5:	66 90                	xchg   %ax,%ax
  a7:	66 90                	xchg   %ax,%ax
  a9:	66 90                	xchg   %ax,%ax
  ab:	66 90                	xchg   %ax,%ax
  ad:	66 90                	xchg   %ax,%ax
  af:	90                   	nop

000000b0 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
  b0:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
  b1:	31 c0                	xor    %eax,%eax
{
  b3:	89 e5                	mov    %esp,%ebp
  b5:	53                   	push   %ebx
  b6:	8b 4d 08             	mov    0x8(%ebp),%ecx
  b9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
  c0:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
  c4:	88 14 01             	mov    %dl,(%ecx,%eax,1)
  c7:	83 c0 01             	add    $0x1,%eax
  ca:	84 d2                	test   %dl,%dl
  cc:	75 f2                	jne    c0 <strcpy+0x10>
    ;
  return os;
}
  ce:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  d1:	89 c8                	mov    %ecx,%eax
  d3:	c9                   	leave
  d4:	c3                   	ret
  d5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000000e0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
  e0:	55                   	push   %ebp
  e1:	89 e5                	mov    %esp,%ebp
  e3:	53                   	push   %ebx
  e4:	8b 55 08             	mov    0x8(%ebp),%edx
  e7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
  ea:	0f b6 02             	movzbl (%edx),%eax
  ed:	84 c0                	test   %al,%al
  ef:	75 17                	jne    108 <strcmp+0x28>
  f1:	eb 3a                	jmp    12d <strcmp+0x4d>
  f3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  f7:	90                   	nop
  f8:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
  fc:	83 c2 01             	add    $0x1,%edx
  ff:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 102:	84 c0                	test   %al,%al
 104:	74 1a                	je     120 <strcmp+0x40>
    p++, q++;
 106:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 108:	0f b6 19             	movzbl (%ecx),%ebx
 10b:	38 c3                	cmp    %al,%bl
 10d:	74 e9                	je     f8 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 10f:	29 d8                	sub    %ebx,%eax
}
 111:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 114:	c9                   	leave
 115:	c3                   	ret
 116:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 11d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 120:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 124:	31 c0                	xor    %eax,%eax
 126:	29 d8                	sub    %ebx,%eax
}
 128:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 12b:	c9                   	leave
 12c:	c3                   	ret
  return (uchar)*p - (uchar)*q;
 12d:	0f b6 19             	movzbl (%ecx),%ebx
 130:	31 c0                	xor    %eax,%eax
 132:	eb db                	jmp    10f <strcmp+0x2f>
 134:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 13b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 13f:	90                   	nop

00000140 <strlen>:

uint
strlen(char *s)
{
 140:	55                   	push   %ebp
 141:	89 e5                	mov    %esp,%ebp
 143:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 146:	80 3a 00             	cmpb   $0x0,(%edx)
 149:	74 15                	je     160 <strlen+0x20>
 14b:	31 c0                	xor    %eax,%eax
 14d:	8d 76 00             	lea    0x0(%esi),%esi
 150:	83 c0 01             	add    $0x1,%eax
 153:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 157:	89 c1                	mov    %eax,%ecx
 159:	75 f5                	jne    150 <strlen+0x10>
    ;
  return n;
}
 15b:	89 c8                	mov    %ecx,%eax
 15d:	5d                   	pop    %ebp
 15e:	c3                   	ret
 15f:	90                   	nop
  for(n = 0; s[n]; n++)
 160:	31 c9                	xor    %ecx,%ecx
}
 162:	5d                   	pop    %ebp
 163:	89 c8                	mov    %ecx,%eax
 165:	c3                   	ret
 166:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 16d:	8d 76 00             	lea    0x0(%esi),%esi

00000170 <memset>:

void*
memset(void *dst, int c, uint n)
{
 170:	55                   	push   %ebp
 171:	89 e5                	mov    %esp,%ebp
 173:	57                   	push   %edi
 174:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 177:	8b 4d 10             	mov    0x10(%ebp),%ecx
 17a:	8b 45 0c             	mov    0xc(%ebp),%eax
 17d:	89 d7                	mov    %edx,%edi
 17f:	fc                   	cld
 180:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 182:	8b 7d fc             	mov    -0x4(%ebp),%edi
 185:	89 d0                	mov    %edx,%eax
 187:	c9                   	leave
 188:	c3                   	ret
 189:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000190 <strchr>:

char*
strchr(const char *s, char c)
{
 190:	55                   	push   %ebp
 191:	89 e5                	mov    %esp,%ebp
 193:	8b 45 08             	mov    0x8(%ebp),%eax
 196:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 19a:	0f b6 10             	movzbl (%eax),%edx
 19d:	84 d2                	test   %dl,%dl
 19f:	75 12                	jne    1b3 <strchr+0x23>
 1a1:	eb 1d                	jmp    1c0 <strchr+0x30>
 1a3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 1a7:	90                   	nop
 1a8:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 1ac:	83 c0 01             	add    $0x1,%eax
 1af:	84 d2                	test   %dl,%dl
 1b1:	74 0d                	je     1c0 <strchr+0x30>
    if(*s == c)
 1b3:	38 d1                	cmp    %dl,%cl
 1b5:	75 f1                	jne    1a8 <strchr+0x18>
      return (char*)s;
  return 0;
}
 1b7:	5d                   	pop    %ebp
 1b8:	c3                   	ret
 1b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 1c0:	31 c0                	xor    %eax,%eax
}
 1c2:	5d                   	pop    %ebp
 1c3:	c3                   	ret
 1c4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1cb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 1cf:	90                   	nop

000001d0 <gets>:

char*
gets(char *buf, int max)
{
 1d0:	55                   	push   %ebp
 1d1:	89 e5                	mov    %esp,%ebp
 1d3:	57                   	push   %edi
 1d4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 1d5:	8d 75 e7             	lea    -0x19(%ebp),%esi
{
 1d8:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 1d9:	31 db                	xor    %ebx,%ebx
{
 1db:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 1de:	eb 27                	jmp    207 <gets+0x37>
    cc = read(0, &c, 1);
 1e0:	83 ec 04             	sub    $0x4,%esp
 1e3:	6a 01                	push   $0x1
 1e5:	56                   	push   %esi
 1e6:	6a 00                	push   $0x0
 1e8:	e8 1e 01 00 00       	call   30b <read>
    if(cc < 1)
 1ed:	83 c4 10             	add    $0x10,%esp
 1f0:	85 c0                	test   %eax,%eax
 1f2:	7e 1d                	jle    211 <gets+0x41>
      break;
    buf[i++] = c;
 1f4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 1f8:	8b 55 08             	mov    0x8(%ebp),%edx
 1fb:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 1ff:	3c 0a                	cmp    $0xa,%al
 201:	74 10                	je     213 <gets+0x43>
 203:	3c 0d                	cmp    $0xd,%al
 205:	74 0c                	je     213 <gets+0x43>
  for(i=0; i+1 < max; ){
 207:	89 df                	mov    %ebx,%edi
 209:	83 c3 01             	add    $0x1,%ebx
 20c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 20f:	7c cf                	jl     1e0 <gets+0x10>
 211:	89 fb                	mov    %edi,%ebx
      break;
  }
  buf[i] = '\0';
 213:	8b 45 08             	mov    0x8(%ebp),%eax
 216:	c6 04 18 00          	movb   $0x0,(%eax,%ebx,1)
  return buf;
}
 21a:	8d 65 f4             	lea    -0xc(%ebp),%esp
 21d:	5b                   	pop    %ebx
 21e:	5e                   	pop    %esi
 21f:	5f                   	pop    %edi
 220:	5d                   	pop    %ebp
 221:	c3                   	ret
 222:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 229:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000230 <stat>:

int
stat(char *n, struct stat *st)
{
 230:	55                   	push   %ebp
 231:	89 e5                	mov    %esp,%ebp
 233:	56                   	push   %esi
 234:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 235:	83 ec 08             	sub    $0x8,%esp
 238:	6a 00                	push   $0x0
 23a:	ff 75 08             	push   0x8(%ebp)
 23d:	e8 f1 00 00 00       	call   333 <open>
  if(fd < 0)
 242:	83 c4 10             	add    $0x10,%esp
 245:	85 c0                	test   %eax,%eax
 247:	78 27                	js     270 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 249:	83 ec 08             	sub    $0x8,%esp
 24c:	ff 75 0c             	push   0xc(%ebp)
 24f:	89 c3                	mov    %eax,%ebx
 251:	50                   	push   %eax
 252:	e8 f4 00 00 00       	call   34b <fstat>
  close(fd);
 257:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 25a:	89 c6                	mov    %eax,%esi
  close(fd);
 25c:	e8 ba 00 00 00       	call   31b <close>
  return r;
 261:	83 c4 10             	add    $0x10,%esp
}
 264:	8d 65 f8             	lea    -0x8(%ebp),%esp
 267:	89 f0                	mov    %esi,%eax
 269:	5b                   	pop    %ebx
 26a:	5e                   	pop    %esi
 26b:	5d                   	pop    %ebp
 26c:	c3                   	ret
 26d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 270:	be ff ff ff ff       	mov    $0xffffffff,%esi
 275:	eb ed                	jmp    264 <stat+0x34>
 277:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 27e:	66 90                	xchg   %ax,%ax

00000280 <atoi>:

int
atoi(const char *s)
{
 280:	55                   	push   %ebp
 281:	89 e5                	mov    %esp,%ebp
 283:	53                   	push   %ebx
 284:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 287:	0f be 02             	movsbl (%edx),%eax
 28a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 28d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 290:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 295:	77 1e                	ja     2b5 <atoi+0x35>
 297:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 29e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 2a0:	83 c2 01             	add    $0x1,%edx
 2a3:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 2a6:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 2aa:	0f be 02             	movsbl (%edx),%eax
 2ad:	8d 58 d0             	lea    -0x30(%eax),%ebx
 2b0:	80 fb 09             	cmp    $0x9,%bl
 2b3:	76 eb                	jbe    2a0 <atoi+0x20>
  return n;
}
 2b5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 2b8:	89 c8                	mov    %ecx,%eax
 2ba:	c9                   	leave
 2bb:	c3                   	ret
 2bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000002c0 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
 2c0:	55                   	push   %ebp
 2c1:	89 e5                	mov    %esp,%ebp
 2c3:	57                   	push   %edi
 2c4:	56                   	push   %esi
 2c5:	8b 45 10             	mov    0x10(%ebp),%eax
 2c8:	8b 55 08             	mov    0x8(%ebp),%edx
 2cb:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 2ce:	85 c0                	test   %eax,%eax
 2d0:	7e 13                	jle    2e5 <memmove+0x25>
 2d2:	01 d0                	add    %edx,%eax
  dst = vdst;
 2d4:	89 d7                	mov    %edx,%edi
 2d6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2dd:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 2e0:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 2e1:	39 f8                	cmp    %edi,%eax
 2e3:	75 fb                	jne    2e0 <memmove+0x20>
  return vdst;
}
 2e5:	5e                   	pop    %esi
 2e6:	89 d0                	mov    %edx,%eax
 2e8:	5f                   	pop    %edi
 2e9:	5d                   	pop    %ebp
 2ea:	c3                   	ret

000002eb <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 2eb:	b8 01 00 00 00       	mov    $0x1,%eax
 2f0:	cd 40                	int    $0x40
 2f2:	c3                   	ret

000002f3 <exit>:
SYSCALL(exit)
 2f3:	b8 02 00 00 00       	mov    $0x2,%eax
 2f8:	cd 40                	int    $0x40
 2fa:	c3                   	ret

000002fb <wait>:
SYSCALL(wait)
 2fb:	b8 03 00 00 00       	mov    $0x3,%eax
 300:	cd 40                	int    $0x40
 302:	c3                   	ret

00000303 <pipe>:
SYSCALL(pipe)
 303:	b8 04 00 00 00       	mov    $0x4,%eax
 308:	cd 40                	int    $0x40
 30a:	c3                   	ret

0000030b <read>:
SYSCALL(read)
 30b:	b8 05 00 00 00       	mov    $0x5,%eax
 310:	cd 40                	int    $0x40
 312:	c3                   	ret

00000313 <write>:
SYSCALL(write)
 313:	b8 10 00 00 00       	mov    $0x10,%eax
 318:	cd 40                	int    $0x40
 31a:	c3                   	ret

0000031b <close>:
SYSCALL(close)
 31b:	b8 15 00 00 00       	mov    $0x15,%eax
 320:	cd 40                	int    $0x40
 322:	c3                   	ret

00000323 <kill>:
SYSCALL(kill)
 323:	b8 06 00 00 00       	mov    $0x6,%eax
 328:	cd 40                	int    $0x40
 32a:	c3                   	ret

0000032b <exec>:
SYSCALL(exec)
 32b:	b8 07 00 00 00       	mov    $0x7,%eax
 330:	cd 40                	int    $0x40
 332:	c3                   	ret

00000333 <open>:
SYSCALL(open)
 333:	b8 0f 00 00 00       	mov    $0xf,%eax
 338:	cd 40                	int    $0x40
 33a:	c3                   	ret

0000033b <mknod>:
SYSCALL(mknod)
 33b:	b8 11 00 00 00       	mov    $0x11,%eax
 340:	cd 40                	int    $0x40
 342:	c3                   	ret

00000343 <unlink>:
SYSCALL(unlink)
 343:	b8 12 00 00 00       	mov    $0x12,%eax
 348:	cd 40                	int    $0x40
 34a:	c3                   	ret

0000034b <fstat>:
SYSCALL(fstat)
 34b:	b8 08 00 00 00       	mov    $0x8,%eax
 350:	cd 40                	int    $0x40
 352:	c3                   	ret

00000353 <link>:
SYSCALL(link)
 353:	b8 13 00 00 00       	mov    $0x13,%eax
 358:	cd 40                	int    $0x40
 35a:	c3                   	ret

0000035b <mkdir>:
SYSCALL(mkdir)
 35b:	b8 14 00 00 00       	mov    $0x14,%eax
 360:	cd 40                	int    $0x40
 362:	c3                   	ret

00000363 <chdir>:
SYSCALL(chdir)
 363:	b8 09 00 00 00       	mov    $0x9,%eax
 368:	cd 40                	int    $0x40
 36a:	c3                   	ret

0000036b <dup>:
SYSCALL(dup)
 36b:	b8 0a 00 00 00       	mov    $0xa,%eax
 370:	cd 40                	int    $0x40
 372:	c3                   	ret

00000373 <getpid>:
SYSCALL(getpid)
 373:	b8 0b 00 00 00       	mov    $0xb,%eax
 378:	cd 40                	int    $0x40
 37a:	c3                   	ret

0000037b <sbrk>:
SYSCALL(sbrk)
 37b:	b8 0c 00 00 00       	mov    $0xc,%eax
 380:	cd 40                	int    $0x40
 382:	c3                   	ret

00000383 <sleep>:
SYSCALL(sleep)
 383:	b8 0d 00 00 00       	mov    $0xd,%eax
 388:	cd 40                	int    $0x40
 38a:	c3                   	ret

0000038b <uptime>:
SYSCALL(uptime)
 38b:	b8 0e 00 00 00       	mov    $0xe,%eax
 390:	cd 40                	int    $0x40
 392:	c3                   	ret

00000393 <shutdown>:
SYSCALL(shutdown)
 393:	b8 16 00 00 00       	mov    $0x16,%eax
 398:	cd 40                	int    $0x40
 39a:	c3                   	ret

0000039b <exit2>:
SYSCALL(exit2)
 39b:	b8 17 00 00 00       	mov    $0x17,%eax
 3a0:	cd 40                	int    $0x40
 3a2:	c3                   	ret

000003a3 <echo2>:
SYSCALL(echo2)
 3a3:	b8 18 00 00 00       	mov    $0x18,%eax
 3a8:	cd 40                	int    $0x40
 3aa:	c3                   	ret
 3ab:	66 90                	xchg   %ax,%ax
 3ad:	66 90                	xchg   %ax,%ax
 3af:	90                   	nop

000003b0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 3b0:	55                   	push   %ebp
 3b1:	89 e5                	mov    %esp,%ebp
 3b3:	57                   	push   %edi
 3b4:	56                   	push   %esi
 3b5:	53                   	push   %ebx
 3b6:	89 cb                	mov    %ecx,%ebx
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 3b8:	89 d1                	mov    %edx,%ecx
{
 3ba:	83 ec 3c             	sub    $0x3c,%esp
 3bd:	89 45 c0             	mov    %eax,-0x40(%ebp)
  if(sgn && xx < 0){
 3c0:	85 d2                	test   %edx,%edx
 3c2:	0f 89 80 00 00 00    	jns    448 <printint+0x98>
 3c8:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 3cc:	74 7a                	je     448 <printint+0x98>
    x = -xx;
 3ce:	f7 d9                	neg    %ecx
    neg = 1;
 3d0:	b8 01 00 00 00       	mov    $0x1,%eax
  } else {
    x = xx;
  }

  i = 0;
 3d5:	89 45 c4             	mov    %eax,-0x3c(%ebp)
 3d8:	31 f6                	xor    %esi,%esi
 3da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 3e0:	89 c8                	mov    %ecx,%eax
 3e2:	31 d2                	xor    %edx,%edx
 3e4:	89 f7                	mov    %esi,%edi
 3e6:	f7 f3                	div    %ebx
 3e8:	8d 76 01             	lea    0x1(%esi),%esi
 3eb:	0f b6 92 d8 07 00 00 	movzbl 0x7d8(%edx),%edx
 3f2:	88 54 35 d7          	mov    %dl,-0x29(%ebp,%esi,1)
  }while((x /= base) != 0);
 3f6:	89 ca                	mov    %ecx,%edx
 3f8:	89 c1                	mov    %eax,%ecx
 3fa:	39 da                	cmp    %ebx,%edx
 3fc:	73 e2                	jae    3e0 <printint+0x30>
  if(neg)
 3fe:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 401:	85 c0                	test   %eax,%eax
 403:	74 07                	je     40c <printint+0x5c>
    buf[i++] = '-';
 405:	c6 44 35 d8 2d       	movb   $0x2d,-0x28(%ebp,%esi,1)
    buf[i++] = digits[x % base];
 40a:	89 f7                	mov    %esi,%edi
 40c:	8d 5d d8             	lea    -0x28(%ebp),%ebx
 40f:	8b 75 c0             	mov    -0x40(%ebp),%esi
 412:	01 df                	add    %ebx,%edi
 414:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

  while(--i >= 0)
    putc(fd, buf[i]);
 418:	0f b6 07             	movzbl (%edi),%eax
  write(fd, &c, 1);
 41b:	83 ec 04             	sub    $0x4,%esp
 41e:	88 45 d7             	mov    %al,-0x29(%ebp)
 421:	8d 45 d7             	lea    -0x29(%ebp),%eax
 424:	6a 01                	push   $0x1
 426:	50                   	push   %eax
 427:	56                   	push   %esi
 428:	e8 e6 fe ff ff       	call   313 <write>
  while(--i >= 0)
 42d:	89 f8                	mov    %edi,%eax
 42f:	83 c4 10             	add    $0x10,%esp
 432:	83 ef 01             	sub    $0x1,%edi
 435:	39 d8                	cmp    %ebx,%eax
 437:	75 df                	jne    418 <printint+0x68>
}
 439:	8d 65 f4             	lea    -0xc(%ebp),%esp
 43c:	5b                   	pop    %ebx
 43d:	5e                   	pop    %esi
 43e:	5f                   	pop    %edi
 43f:	5d                   	pop    %ebp
 440:	c3                   	ret
 441:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 448:	31 c0                	xor    %eax,%eax
 44a:	eb 89                	jmp    3d5 <printint+0x25>
 44c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000450 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 450:	55                   	push   %ebp
 451:	89 e5                	mov    %esp,%ebp
 453:	57                   	push   %edi
 454:	56                   	push   %esi
 455:	53                   	push   %ebx
 456:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 459:	8b 75 0c             	mov    0xc(%ebp),%esi
{
 45c:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i = 0; fmt[i]; i++){
 45f:	0f b6 1e             	movzbl (%esi),%ebx
 462:	83 c6 01             	add    $0x1,%esi
 465:	84 db                	test   %bl,%bl
 467:	74 67                	je     4d0 <printf+0x80>
 469:	8d 4d 10             	lea    0x10(%ebp),%ecx
 46c:	31 d2                	xor    %edx,%edx
 46e:	89 4d d0             	mov    %ecx,-0x30(%ebp)
 471:	eb 34                	jmp    4a7 <printf+0x57>
 473:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 477:	90                   	nop
 478:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 47b:	ba 25 00 00 00       	mov    $0x25,%edx
      if(c == '%'){
 480:	83 f8 25             	cmp    $0x25,%eax
 483:	74 18                	je     49d <printf+0x4d>
  write(fd, &c, 1);
 485:	83 ec 04             	sub    $0x4,%esp
 488:	8d 45 e7             	lea    -0x19(%ebp),%eax
 48b:	88 5d e7             	mov    %bl,-0x19(%ebp)
 48e:	6a 01                	push   $0x1
 490:	50                   	push   %eax
 491:	57                   	push   %edi
 492:	e8 7c fe ff ff       	call   313 <write>
 497:	8b 55 d4             	mov    -0x2c(%ebp),%edx
      } else {
        putc(fd, c);
 49a:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 49d:	0f b6 1e             	movzbl (%esi),%ebx
 4a0:	83 c6 01             	add    $0x1,%esi
 4a3:	84 db                	test   %bl,%bl
 4a5:	74 29                	je     4d0 <printf+0x80>
    c = fmt[i] & 0xff;
 4a7:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
 4aa:	85 d2                	test   %edx,%edx
 4ac:	74 ca                	je     478 <printf+0x28>
      }
    } else if(state == '%'){
 4ae:	83 fa 25             	cmp    $0x25,%edx
 4b1:	75 ea                	jne    49d <printf+0x4d>
      if(c == 'd'){
 4b3:	83 f8 25             	cmp    $0x25,%eax
 4b6:	0f 84 24 01 00 00    	je     5e0 <printf+0x190>
 4bc:	83 e8 63             	sub    $0x63,%eax
 4bf:	83 f8 15             	cmp    $0x15,%eax
 4c2:	77 1c                	ja     4e0 <printf+0x90>
 4c4:	ff 24 85 80 07 00 00 	jmp    *0x780(,%eax,4)
 4cb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 4cf:	90                   	nop
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 4d0:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4d3:	5b                   	pop    %ebx
 4d4:	5e                   	pop    %esi
 4d5:	5f                   	pop    %edi
 4d6:	5d                   	pop    %ebp
 4d7:	c3                   	ret
 4d8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4df:	90                   	nop
  write(fd, &c, 1);
 4e0:	83 ec 04             	sub    $0x4,%esp
 4e3:	8d 55 e7             	lea    -0x19(%ebp),%edx
 4e6:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 4ea:	6a 01                	push   $0x1
 4ec:	52                   	push   %edx
 4ed:	89 55 d4             	mov    %edx,-0x2c(%ebp)
 4f0:	57                   	push   %edi
 4f1:	e8 1d fe ff ff       	call   313 <write>
 4f6:	83 c4 0c             	add    $0xc,%esp
 4f9:	88 5d e7             	mov    %bl,-0x19(%ebp)
 4fc:	6a 01                	push   $0x1
 4fe:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 501:	52                   	push   %edx
 502:	57                   	push   %edi
 503:	e8 0b fe ff ff       	call   313 <write>
        putc(fd, c);
 508:	83 c4 10             	add    $0x10,%esp
      state = 0;
 50b:	31 d2                	xor    %edx,%edx
 50d:	eb 8e                	jmp    49d <printf+0x4d>
 50f:	90                   	nop
        printint(fd, *ap, 16, 0);
 510:	8b 5d d0             	mov    -0x30(%ebp),%ebx
 513:	83 ec 0c             	sub    $0xc,%esp
 516:	b9 10 00 00 00       	mov    $0x10,%ecx
 51b:	8b 13                	mov    (%ebx),%edx
 51d:	6a 00                	push   $0x0
 51f:	89 f8                	mov    %edi,%eax
        ap++;
 521:	83 c3 04             	add    $0x4,%ebx
        printint(fd, *ap, 16, 0);
 524:	e8 87 fe ff ff       	call   3b0 <printint>
        ap++;
 529:	89 5d d0             	mov    %ebx,-0x30(%ebp)
 52c:	83 c4 10             	add    $0x10,%esp
      state = 0;
 52f:	31 d2                	xor    %edx,%edx
 531:	e9 67 ff ff ff       	jmp    49d <printf+0x4d>
 536:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 53d:	8d 76 00             	lea    0x0(%esi),%esi
        s = (char*)*ap;
 540:	8b 45 d0             	mov    -0x30(%ebp),%eax
 543:	8b 18                	mov    (%eax),%ebx
        ap++;
 545:	83 c0 04             	add    $0x4,%eax
 548:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 54b:	85 db                	test   %ebx,%ebx
 54d:	0f 84 9d 00 00 00    	je     5f0 <printf+0x1a0>
        while(*s != 0){
 553:	0f b6 03             	movzbl (%ebx),%eax
      state = 0;
 556:	31 d2                	xor    %edx,%edx
        while(*s != 0){
 558:	84 c0                	test   %al,%al
 55a:	0f 84 3d ff ff ff    	je     49d <printf+0x4d>
 560:	8d 55 e7             	lea    -0x19(%ebp),%edx
 563:	89 75 d4             	mov    %esi,-0x2c(%ebp)
 566:	89 de                	mov    %ebx,%esi
 568:	89 d3                	mov    %edx,%ebx
 56a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 570:	83 ec 04             	sub    $0x4,%esp
 573:	88 45 e7             	mov    %al,-0x19(%ebp)
          s++;
 576:	83 c6 01             	add    $0x1,%esi
  write(fd, &c, 1);
 579:	6a 01                	push   $0x1
 57b:	53                   	push   %ebx
 57c:	57                   	push   %edi
 57d:	e8 91 fd ff ff       	call   313 <write>
        while(*s != 0){
 582:	0f b6 06             	movzbl (%esi),%eax
 585:	83 c4 10             	add    $0x10,%esp
 588:	84 c0                	test   %al,%al
 58a:	75 e4                	jne    570 <printf+0x120>
      state = 0;
 58c:	8b 75 d4             	mov    -0x2c(%ebp),%esi
 58f:	31 d2                	xor    %edx,%edx
 591:	e9 07 ff ff ff       	jmp    49d <printf+0x4d>
 596:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 59d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 5a0:	8b 5d d0             	mov    -0x30(%ebp),%ebx
 5a3:	83 ec 0c             	sub    $0xc,%esp
 5a6:	b9 0a 00 00 00       	mov    $0xa,%ecx
 5ab:	8b 13                	mov    (%ebx),%edx
 5ad:	6a 01                	push   $0x1
 5af:	e9 6b ff ff ff       	jmp    51f <printf+0xcf>
 5b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, *ap);
 5b8:	8b 5d d0             	mov    -0x30(%ebp),%ebx
  write(fd, &c, 1);
 5bb:	83 ec 04             	sub    $0x4,%esp
 5be:	8d 55 e7             	lea    -0x19(%ebp),%edx
        putc(fd, *ap);
 5c1:	8b 03                	mov    (%ebx),%eax
        ap++;
 5c3:	83 c3 04             	add    $0x4,%ebx
        putc(fd, *ap);
 5c6:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 5c9:	6a 01                	push   $0x1
 5cb:	52                   	push   %edx
 5cc:	57                   	push   %edi
 5cd:	e8 41 fd ff ff       	call   313 <write>
        ap++;
 5d2:	89 5d d0             	mov    %ebx,-0x30(%ebp)
 5d5:	83 c4 10             	add    $0x10,%esp
      state = 0;
 5d8:	31 d2                	xor    %edx,%edx
 5da:	e9 be fe ff ff       	jmp    49d <printf+0x4d>
 5df:	90                   	nop
  write(fd, &c, 1);
 5e0:	83 ec 04             	sub    $0x4,%esp
 5e3:	88 5d e7             	mov    %bl,-0x19(%ebp)
 5e6:	8d 55 e7             	lea    -0x19(%ebp),%edx
 5e9:	6a 01                	push   $0x1
 5eb:	e9 11 ff ff ff       	jmp    501 <printf+0xb1>
 5f0:	b8 28 00 00 00       	mov    $0x28,%eax
          s = "(null)";
 5f5:	bb 78 07 00 00       	mov    $0x778,%ebx
 5fa:	e9 61 ff ff ff       	jmp    560 <printf+0x110>
 5ff:	90                   	nop

00000600 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 600:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 601:	a1 98 0a 00 00       	mov    0xa98,%eax
{
 606:	89 e5                	mov    %esp,%ebp
 608:	57                   	push   %edi
 609:	56                   	push   %esi
 60a:	53                   	push   %ebx
 60b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 60e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 611:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 618:	89 c2                	mov    %eax,%edx
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 61a:	8b 00                	mov    (%eax),%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 61c:	39 ca                	cmp    %ecx,%edx
 61e:	73 30                	jae    650 <free+0x50>
 620:	39 c1                	cmp    %eax,%ecx
 622:	72 04                	jb     628 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 624:	39 c2                	cmp    %eax,%edx
 626:	72 f0                	jb     618 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 628:	8b 73 fc             	mov    -0x4(%ebx),%esi
 62b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 62e:	39 f8                	cmp    %edi,%eax
 630:	74 2e                	je     660 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 632:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 635:	8b 42 04             	mov    0x4(%edx),%eax
 638:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 63b:	39 f1                	cmp    %esi,%ecx
 63d:	74 38                	je     677 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 63f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 641:	5b                   	pop    %ebx
  freep = p;
 642:	89 15 98 0a 00 00    	mov    %edx,0xa98
}
 648:	5e                   	pop    %esi
 649:	5f                   	pop    %edi
 64a:	5d                   	pop    %ebp
 64b:	c3                   	ret
 64c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 650:	39 c1                	cmp    %eax,%ecx
 652:	72 d0                	jb     624 <free+0x24>
 654:	eb c2                	jmp    618 <free+0x18>
 656:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 65d:	8d 76 00             	lea    0x0(%esi),%esi
    bp->s.size += p->s.ptr->s.size;
 660:	03 70 04             	add    0x4(%eax),%esi
 663:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 666:	8b 02                	mov    (%edx),%eax
 668:	8b 00                	mov    (%eax),%eax
 66a:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 66d:	8b 42 04             	mov    0x4(%edx),%eax
 670:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 673:	39 f1                	cmp    %esi,%ecx
 675:	75 c8                	jne    63f <free+0x3f>
    p->s.size += bp->s.size;
 677:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 67a:	89 15 98 0a 00 00    	mov    %edx,0xa98
    p->s.size += bp->s.size;
 680:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 683:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 686:	89 0a                	mov    %ecx,(%edx)
}
 688:	5b                   	pop    %ebx
 689:	5e                   	pop    %esi
 68a:	5f                   	pop    %edi
 68b:	5d                   	pop    %ebp
 68c:	c3                   	ret
 68d:	8d 76 00             	lea    0x0(%esi),%esi

00000690 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 690:	55                   	push   %ebp
 691:	89 e5                	mov    %esp,%ebp
 693:	57                   	push   %edi
 694:	56                   	push   %esi
 695:	53                   	push   %ebx
 696:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 699:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 69c:	8b 15 98 0a 00 00    	mov    0xa98,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 6a2:	8d 78 07             	lea    0x7(%eax),%edi
 6a5:	c1 ef 03             	shr    $0x3,%edi
 6a8:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 6ab:	85 d2                	test   %edx,%edx
 6ad:	0f 84 8d 00 00 00    	je     740 <malloc+0xb0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 6b3:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 6b5:	8b 48 04             	mov    0x4(%eax),%ecx
 6b8:	39 f9                	cmp    %edi,%ecx
 6ba:	73 64                	jae    720 <malloc+0x90>
  if(nu < 4096)
 6bc:	bb 00 10 00 00       	mov    $0x1000,%ebx
 6c1:	39 df                	cmp    %ebx,%edi
 6c3:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
 6c6:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
 6cd:	eb 0a                	jmp    6d9 <malloc+0x49>
 6cf:	90                   	nop
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 6d0:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 6d2:	8b 48 04             	mov    0x4(%eax),%ecx
 6d5:	39 f9                	cmp    %edi,%ecx
 6d7:	73 47                	jae    720 <malloc+0x90>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 6d9:	89 c2                	mov    %eax,%edx
 6db:	39 05 98 0a 00 00    	cmp    %eax,0xa98
 6e1:	75 ed                	jne    6d0 <malloc+0x40>
  p = sbrk(nu * sizeof(Header));
 6e3:	83 ec 0c             	sub    $0xc,%esp
 6e6:	56                   	push   %esi
 6e7:	e8 8f fc ff ff       	call   37b <sbrk>
  if(p == (char*)-1)
 6ec:	83 c4 10             	add    $0x10,%esp
 6ef:	83 f8 ff             	cmp    $0xffffffff,%eax
 6f2:	74 1c                	je     710 <malloc+0x80>
  hp->s.size = nu;
 6f4:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 6f7:	83 ec 0c             	sub    $0xc,%esp
 6fa:	83 c0 08             	add    $0x8,%eax
 6fd:	50                   	push   %eax
 6fe:	e8 fd fe ff ff       	call   600 <free>
  return freep;
 703:	8b 15 98 0a 00 00    	mov    0xa98,%edx
      if((p = morecore(nunits)) == 0)
 709:	83 c4 10             	add    $0x10,%esp
 70c:	85 d2                	test   %edx,%edx
 70e:	75 c0                	jne    6d0 <malloc+0x40>
        return 0;
  }
}
 710:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 713:	31 c0                	xor    %eax,%eax
}
 715:	5b                   	pop    %ebx
 716:	5e                   	pop    %esi
 717:	5f                   	pop    %edi
 718:	5d                   	pop    %ebp
 719:	c3                   	ret
 71a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 720:	39 cf                	cmp    %ecx,%edi
 722:	74 4c                	je     770 <malloc+0xe0>
        p->s.size -= nunits;
 724:	29 f9                	sub    %edi,%ecx
 726:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 729:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 72c:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
 72f:	89 15 98 0a 00 00    	mov    %edx,0xa98
}
 735:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 738:	83 c0 08             	add    $0x8,%eax
}
 73b:	5b                   	pop    %ebx
 73c:	5e                   	pop    %esi
 73d:	5f                   	pop    %edi
 73e:	5d                   	pop    %ebp
 73f:	c3                   	ret
    base.s.ptr = freep = prevp = &base;
 740:	c7 05 98 0a 00 00 9c 	movl   $0xa9c,0xa98
 747:	0a 00 00 
    base.s.size = 0;
 74a:	b8 9c 0a 00 00       	mov    $0xa9c,%eax
    base.s.ptr = freep = prevp = &base;
 74f:	c7 05 9c 0a 00 00 9c 	movl   $0xa9c,0xa9c
 756:	0a 00 00 
    base.s.size = 0;
 759:	c7 05 a0 0a 00 00 00 	movl   $0x0,0xaa0
 760:	00 00 00 
    if(p->s.size >= nunits){
 763:	e9 54 ff ff ff       	jmp    6bc <malloc+0x2c>
 768:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 76f:	90                   	nop
        prevp->s.ptr = p->s.ptr;
 770:	8b 08                	mov    (%eax),%ecx
 772:	89 0a                	mov    %ecx,(%edx)
 774:	eb b9                	jmp    72f <malloc+0x9f>
