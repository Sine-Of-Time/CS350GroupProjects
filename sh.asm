
_sh:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  return 0;
}

int
main(void)
{
       0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
       4:	83 e4 f0             	and    $0xfffffff0,%esp
       7:	ff 71 fc             	push   -0x4(%ecx)
       a:	55                   	push   %ebp
       b:	89 e5                	mov    %esp,%ebp
       d:	51                   	push   %ecx
       e:	83 ec 04             	sub    $0x4,%esp
  static char buf[100];
  int fd;

  // Ensure that three file descriptors are open.
  while((fd = open("console", O_RDWR)) >= 0){
      11:	eb 0e                	jmp    21 <main+0x21>
      13:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      17:	90                   	nop
    if(fd >= 3){
      18:	83 f8 02             	cmp    $0x2,%eax
      1b:	0f 8f 96 00 00 00    	jg     b7 <main+0xb7>
  while((fd = open("console", O_RDWR)) >= 0){
      21:	83 ec 08             	sub    $0x8,%esp
      24:	6a 02                	push   $0x2
      26:	68 8d 12 00 00       	push   $0x128d
      2b:	e8 43 0d 00 00       	call   d73 <open>
      30:	83 c4 10             	add    $0x10,%esp
      33:	85 c0                	test   %eax,%eax
      35:	79 e1                	jns    18 <main+0x18>
      37:	eb 2e                	jmp    67 <main+0x67>
      39:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    }
  }

  // Read and run input commands.
  while(getcmd(buf, sizeof(buf)) >= 0){
    if(buf[0] == 'c' && buf[1] == 'd' && buf[2] == ' '){
      40:	80 3d 22 19 00 00 20 	cmpb   $0x20,0x1922
      47:	0f 84 8d 00 00 00    	je     da <main+0xda>
      4d:	8d 76 00             	lea    0x0(%esi),%esi
int
fork1(void)
{
  int pid;

  pid = fork();
      50:	e8 d6 0c 00 00       	call   d2b <fork>
  if(pid == -1)
      55:	83 f8 ff             	cmp    $0xffffffff,%eax
      58:	0f 84 c1 00 00 00    	je     11f <main+0x11f>
    if(fork1() == 0)
      5e:	85 c0                	test   %eax,%eax
      60:	74 63                	je     c5 <main+0xc5>
    wait();
      62:	e8 d4 0c 00 00       	call   d3b <wait>
  printf(2, "$ ");
      67:	83 ec 08             	sub    $0x8,%esp
      6a:	68 b8 11 00 00       	push   $0x11b8
      6f:	6a 02                	push   $0x2
      71:	e8 1a 0e 00 00       	call   e90 <printf>
  memset(buf, 0, nbuf);
      76:	83 c4 0c             	add    $0xc,%esp
      79:	6a 64                	push   $0x64
      7b:	6a 00                	push   $0x0
      7d:	68 20 19 00 00       	push   $0x1920
      82:	e8 29 0b 00 00       	call   bb0 <memset>
  gets(buf, nbuf);
      87:	58                   	pop    %eax
      88:	5a                   	pop    %edx
      89:	6a 64                	push   $0x64
      8b:	68 20 19 00 00       	push   $0x1920
      90:	e8 7b 0b 00 00       	call   c10 <gets>
  if(buf[0] == 0) // EOF
      95:	0f b6 05 20 19 00 00 	movzbl 0x1920,%eax
      9c:	83 c4 10             	add    $0x10,%esp
      9f:	84 c0                	test   %al,%al
      a1:	74 0f                	je     b2 <main+0xb2>
    if(buf[0] == 'c' && buf[1] == 'd' && buf[2] == ' '){
      a3:	3c 63                	cmp    $0x63,%al
      a5:	75 a9                	jne    50 <main+0x50>
      a7:	80 3d 21 19 00 00 64 	cmpb   $0x64,0x1921
      ae:	75 a0                	jne    50 <main+0x50>
      b0:	eb 8e                	jmp    40 <main+0x40>
  exit();
      b2:	e8 7c 0c 00 00       	call   d33 <exit>
      close(fd);
      b7:	83 ec 0c             	sub    $0xc,%esp
      ba:	50                   	push   %eax
      bb:	e8 9b 0c 00 00       	call   d5b <close>
      break;
      c0:	83 c4 10             	add    $0x10,%esp
      c3:	eb a2                	jmp    67 <main+0x67>
      runcmd(parsecmd(buf));
      c5:	83 ec 0c             	sub    $0xc,%esp
      c8:	68 20 19 00 00       	push   $0x1920
      cd:	e8 ae 09 00 00       	call   a80 <parsecmd>
      d2:	89 04 24             	mov    %eax,(%esp)
      d5:	e8 b6 00 00 00       	call   190 <runcmd>
      buf[strlen(buf)-1] = 0;  // chop \n
      da:	83 ec 0c             	sub    $0xc,%esp
      dd:	68 20 19 00 00       	push   $0x1920
      e2:	e8 99 0a 00 00       	call   b80 <strlen>
      if(chdir(buf+3) < 0)
      e7:	c7 04 24 23 19 00 00 	movl   $0x1923,(%esp)
      buf[strlen(buf)-1] = 0;  // chop \n
      ee:	c6 80 1f 19 00 00 00 	movb   $0x0,0x191f(%eax)
      if(chdir(buf+3) < 0)
      f5:	e8 a9 0c 00 00       	call   da3 <chdir>
      fa:	83 c4 10             	add    $0x10,%esp
      fd:	85 c0                	test   %eax,%eax
      ff:	0f 89 62 ff ff ff    	jns    67 <main+0x67>
        printf(2, "cannot cd %s\n", buf+3);
     105:	51                   	push   %ecx
     106:	68 23 19 00 00       	push   $0x1923
     10b:	68 95 12 00 00       	push   $0x1295
     110:	6a 02                	push   $0x2
     112:	e8 79 0d 00 00       	call   e90 <printf>
     117:	83 c4 10             	add    $0x10,%esp
     11a:	e9 48 ff ff ff       	jmp    67 <main+0x67>
    panic("fork");
     11f:	83 ec 0c             	sub    $0xc,%esp
     122:	68 1b 12 00 00       	push   $0x121b
     127:	e8 44 00 00 00       	call   170 <panic>
     12c:	66 90                	xchg   %ax,%ax
     12e:	66 90                	xchg   %ax,%ax

00000130 <getcmd>:
{
     130:	55                   	push   %ebp
     131:	89 e5                	mov    %esp,%ebp
     133:	56                   	push   %esi
     134:	53                   	push   %ebx
     135:	8b 5d 08             	mov    0x8(%ebp),%ebx
     138:	8b 75 0c             	mov    0xc(%ebp),%esi
  printf(2, "$ ");
     13b:	83 ec 08             	sub    $0x8,%esp
     13e:	68 b8 11 00 00       	push   $0x11b8
     143:	6a 02                	push   $0x2
     145:	e8 46 0d 00 00       	call   e90 <printf>
  memset(buf, 0, nbuf);
     14a:	83 c4 0c             	add    $0xc,%esp
     14d:	56                   	push   %esi
     14e:	6a 00                	push   $0x0
     150:	53                   	push   %ebx
     151:	e8 5a 0a 00 00       	call   bb0 <memset>
  gets(buf, nbuf);
     156:	58                   	pop    %eax
     157:	5a                   	pop    %edx
     158:	56                   	push   %esi
     159:	53                   	push   %ebx
     15a:	e8 b1 0a 00 00       	call   c10 <gets>
  if(buf[0] == 0) // EOF
     15f:	83 c4 10             	add    $0x10,%esp
     162:	80 3b 01             	cmpb   $0x1,(%ebx)
     165:	19 c0                	sbb    %eax,%eax
}
     167:	8d 65 f8             	lea    -0x8(%ebp),%esp
     16a:	5b                   	pop    %ebx
     16b:	5e                   	pop    %esi
     16c:	5d                   	pop    %ebp
     16d:	c3                   	ret
     16e:	66 90                	xchg   %ax,%ax

00000170 <panic>:
{
     170:	55                   	push   %ebp
     171:	89 e5                	mov    %esp,%ebp
     173:	83 ec 0c             	sub    $0xc,%esp
  printf(2, "%s\n", s);
     176:	ff 75 08             	push   0x8(%ebp)
     179:	68 89 12 00 00       	push   $0x1289
     17e:	6a 02                	push   $0x2
     180:	e8 0b 0d 00 00       	call   e90 <printf>
  exit();
     185:	e8 a9 0b 00 00       	call   d33 <exit>
     18a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000190 <runcmd>:
{
     190:	55                   	push   %ebp
     191:	89 e5                	mov    %esp,%ebp
     193:	53                   	push   %ebx
     194:	83 ec 04             	sub    $0x4,%esp
     197:	8b 5d 08             	mov    0x8(%ebp),%ebx
  if(cmd == 0)
     19a:	85 db                	test   %ebx,%ebx
     19c:	74 2a                	je     1c8 <runcmd+0x38>
  switch(cmd->type){
     19e:	83 3b 05             	cmpl   $0x5,(%ebx)
     1a1:	0f 87 89 00 00 00    	ja     230 <runcmd+0xa0>
     1a7:	8b 03                	mov    (%ebx),%eax
     1a9:	ff 24 85 c4 12 00 00 	jmp    *0x12c4(,%eax,4)
    printf(2, "Pipe Not implemented\n");
     1b0:	52                   	push   %edx
     1b1:	52                   	push   %edx
     1b2:	68 05 12 00 00       	push   $0x1205
     1b7:	6a 02                	push   $0x2
     1b9:	e8 d2 0c 00 00       	call   e90 <printf>
    break;
     1be:	83 c4 10             	add    $0x10,%esp
     1c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    exit();
     1c8:	e8 66 0b 00 00       	call   d33 <exit>
    printf(2, "Backgrounding not implemented\n");
     1cd:	50                   	push   %eax
     1ce:	50                   	push   %eax
     1cf:	68 a4 12 00 00       	push   $0x12a4
     1d4:	6a 02                	push   $0x2
     1d6:	e8 b5 0c 00 00       	call   e90 <printf>
    break;
     1db:	83 c4 10             	add    $0x10,%esp
     1de:	eb e8                	jmp    1c8 <runcmd+0x38>
    if(ecmd->argv[0] == 0)
     1e0:	8b 43 04             	mov    0x4(%ebx),%eax
     1e3:	85 c0                	test   %eax,%eax
     1e5:	74 e1                	je     1c8 <runcmd+0x38>
    exec(ecmd->argv[0], ecmd->argv);
     1e7:	52                   	push   %edx
     1e8:	52                   	push   %edx
     1e9:	8d 53 04             	lea    0x4(%ebx),%edx
     1ec:	52                   	push   %edx
     1ed:	50                   	push   %eax
     1ee:	e8 78 0b 00 00       	call   d6b <exec>
    printf(2, "exec %s failed\n", ecmd->argv[0]);
     1f3:	83 c4 0c             	add    $0xc,%esp
     1f6:	ff 73 04             	push   0x4(%ebx)
     1f9:	68 c2 11 00 00       	push   $0x11c2
     1fe:	6a 02                	push   $0x2
     200:	e8 8b 0c 00 00       	call   e90 <printf>
    break;
     205:	83 c4 10             	add    $0x10,%esp
     208:	eb be                	jmp    1c8 <runcmd+0x38>
    printf(2, "Redirection Not Implemented\n");
     20a:	53                   	push   %ebx
     20b:	53                   	push   %ebx
     20c:	68 d2 11 00 00       	push   $0x11d2
     211:	6a 02                	push   $0x2
     213:	e8 78 0c 00 00       	call   e90 <printf>
    break;
     218:	83 c4 10             	add    $0x10,%esp
     21b:	eb ab                	jmp    1c8 <runcmd+0x38>
    printf(2, "List Not Implemented\n");
     21d:	51                   	push   %ecx
     21e:	51                   	push   %ecx
     21f:	68 ef 11 00 00       	push   $0x11ef
     224:	6a 02                	push   $0x2
     226:	e8 65 0c 00 00       	call   e90 <printf>
    break;
     22b:	83 c4 10             	add    $0x10,%esp
     22e:	eb 98                	jmp    1c8 <runcmd+0x38>
    panic("runcmd");
     230:	83 ec 0c             	sub    $0xc,%esp
     233:	68 bb 11 00 00       	push   $0x11bb
     238:	e8 33 ff ff ff       	call   170 <panic>
     23d:	8d 76 00             	lea    0x0(%esi),%esi

00000240 <fork1>:
{
     240:	55                   	push   %ebp
     241:	89 e5                	mov    %esp,%ebp
     243:	83 ec 08             	sub    $0x8,%esp
  pid = fork();
     246:	e8 e0 0a 00 00       	call   d2b <fork>
  if(pid == -1)
     24b:	83 f8 ff             	cmp    $0xffffffff,%eax
     24e:	74 02                	je     252 <fork1+0x12>
  return pid;
}
     250:	c9                   	leave
     251:	c3                   	ret
    panic("fork");
     252:	83 ec 0c             	sub    $0xc,%esp
     255:	68 1b 12 00 00       	push   $0x121b
     25a:	e8 11 ff ff ff       	call   170 <panic>
     25f:	90                   	nop

00000260 <execcmd>:
//PAGEBREAK!
// Constructors

struct cmd*
execcmd(void)
{
     260:	55                   	push   %ebp
     261:	89 e5                	mov    %esp,%ebp
     263:	53                   	push   %ebx
     264:	83 ec 10             	sub    $0x10,%esp
  struct execcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     267:	6a 54                	push   $0x54
     269:	e8 62 0e 00 00       	call   10d0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     26e:	83 c4 0c             	add    $0xc,%esp
     271:	6a 54                	push   $0x54
  cmd = malloc(sizeof(*cmd));
     273:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     275:	6a 00                	push   $0x0
     277:	50                   	push   %eax
     278:	e8 33 09 00 00       	call   bb0 <memset>
  cmd->type = EXEC;
     27d:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
  return (struct cmd*)cmd;
}
     283:	89 d8                	mov    %ebx,%eax
     285:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     288:	c9                   	leave
     289:	c3                   	ret
     28a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000290 <redircmd>:

struct cmd*
redircmd(struct cmd *subcmd, char *file, char *efile, int mode, int fd)
{
     290:	55                   	push   %ebp
     291:	89 e5                	mov    %esp,%ebp
     293:	53                   	push   %ebx
     294:	83 ec 10             	sub    $0x10,%esp
  struct redircmd *cmd;

  cmd = malloc(sizeof(*cmd));
     297:	6a 18                	push   $0x18
     299:	e8 32 0e 00 00       	call   10d0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     29e:	83 c4 0c             	add    $0xc,%esp
     2a1:	6a 18                	push   $0x18
  cmd = malloc(sizeof(*cmd));
     2a3:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     2a5:	6a 00                	push   $0x0
     2a7:	50                   	push   %eax
     2a8:	e8 03 09 00 00       	call   bb0 <memset>
  cmd->type = REDIR;
  cmd->cmd = subcmd;
     2ad:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = REDIR;
     2b0:	c7 03 02 00 00 00    	movl   $0x2,(%ebx)
  cmd->cmd = subcmd;
     2b6:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->file = file;
     2b9:	8b 45 0c             	mov    0xc(%ebp),%eax
     2bc:	89 43 08             	mov    %eax,0x8(%ebx)
  cmd->efile = efile;
     2bf:	8b 45 10             	mov    0x10(%ebp),%eax
     2c2:	89 43 0c             	mov    %eax,0xc(%ebx)
  cmd->mode = mode;
     2c5:	8b 45 14             	mov    0x14(%ebp),%eax
     2c8:	89 43 10             	mov    %eax,0x10(%ebx)
  cmd->fd = fd;
     2cb:	8b 45 18             	mov    0x18(%ebp),%eax
     2ce:	89 43 14             	mov    %eax,0x14(%ebx)
  return (struct cmd*)cmd;
}
     2d1:	89 d8                	mov    %ebx,%eax
     2d3:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     2d6:	c9                   	leave
     2d7:	c3                   	ret
     2d8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     2df:	90                   	nop

000002e0 <pipecmd>:

struct cmd*
pipecmd(struct cmd *left, struct cmd *right)
{
     2e0:	55                   	push   %ebp
     2e1:	89 e5                	mov    %esp,%ebp
     2e3:	53                   	push   %ebx
     2e4:	83 ec 10             	sub    $0x10,%esp
  struct pipecmd *cmd;

  cmd = malloc(sizeof(*cmd));
     2e7:	6a 0c                	push   $0xc
     2e9:	e8 e2 0d 00 00       	call   10d0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     2ee:	83 c4 0c             	add    $0xc,%esp
     2f1:	6a 0c                	push   $0xc
  cmd = malloc(sizeof(*cmd));
     2f3:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     2f5:	6a 00                	push   $0x0
     2f7:	50                   	push   %eax
     2f8:	e8 b3 08 00 00       	call   bb0 <memset>
  cmd->type = PIPE;
  cmd->left = left;
     2fd:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = PIPE;
     300:	c7 03 03 00 00 00    	movl   $0x3,(%ebx)
  cmd->left = left;
     306:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->right = right;
     309:	8b 45 0c             	mov    0xc(%ebp),%eax
     30c:	89 43 08             	mov    %eax,0x8(%ebx)
  return (struct cmd*)cmd;
}
     30f:	89 d8                	mov    %ebx,%eax
     311:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     314:	c9                   	leave
     315:	c3                   	ret
     316:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     31d:	8d 76 00             	lea    0x0(%esi),%esi

00000320 <listcmd>:

struct cmd*
listcmd(struct cmd *left, struct cmd *right)
{
     320:	55                   	push   %ebp
     321:	89 e5                	mov    %esp,%ebp
     323:	53                   	push   %ebx
     324:	83 ec 10             	sub    $0x10,%esp
  struct listcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     327:	6a 0c                	push   $0xc
     329:	e8 a2 0d 00 00       	call   10d0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     32e:	83 c4 0c             	add    $0xc,%esp
     331:	6a 0c                	push   $0xc
  cmd = malloc(sizeof(*cmd));
     333:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     335:	6a 00                	push   $0x0
     337:	50                   	push   %eax
     338:	e8 73 08 00 00       	call   bb0 <memset>
  cmd->type = LIST;
  cmd->left = left;
     33d:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = LIST;
     340:	c7 03 04 00 00 00    	movl   $0x4,(%ebx)
  cmd->left = left;
     346:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->right = right;
     349:	8b 45 0c             	mov    0xc(%ebp),%eax
     34c:	89 43 08             	mov    %eax,0x8(%ebx)
  return (struct cmd*)cmd;
}
     34f:	89 d8                	mov    %ebx,%eax
     351:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     354:	c9                   	leave
     355:	c3                   	ret
     356:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     35d:	8d 76 00             	lea    0x0(%esi),%esi

00000360 <backcmd>:

struct cmd*
backcmd(struct cmd *subcmd)
{
     360:	55                   	push   %ebp
     361:	89 e5                	mov    %esp,%ebp
     363:	53                   	push   %ebx
     364:	83 ec 10             	sub    $0x10,%esp
  struct backcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     367:	6a 08                	push   $0x8
     369:	e8 62 0d 00 00       	call   10d0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     36e:	83 c4 0c             	add    $0xc,%esp
     371:	6a 08                	push   $0x8
  cmd = malloc(sizeof(*cmd));
     373:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     375:	6a 00                	push   $0x0
     377:	50                   	push   %eax
     378:	e8 33 08 00 00       	call   bb0 <memset>
  cmd->type = BACK;
  cmd->cmd = subcmd;
     37d:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = BACK;
     380:	c7 03 05 00 00 00    	movl   $0x5,(%ebx)
  cmd->cmd = subcmd;
     386:	89 43 04             	mov    %eax,0x4(%ebx)
  return (struct cmd*)cmd;
}
     389:	89 d8                	mov    %ebx,%eax
     38b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     38e:	c9                   	leave
     38f:	c3                   	ret

00000390 <gettoken>:
char whitespace[] = " \t\r\n\v";
char symbols[] = "<|>&;()";

int
gettoken(char **ps, char *es, char **q, char **eq)
{
     390:	55                   	push   %ebp
     391:	89 e5                	mov    %esp,%ebp
     393:	57                   	push   %edi
     394:	56                   	push   %esi
     395:	53                   	push   %ebx
     396:	83 ec 0c             	sub    $0xc,%esp
  char *s;
  int ret;

  s = *ps;
     399:	8b 45 08             	mov    0x8(%ebp),%eax
{
     39c:	8b 5d 0c             	mov    0xc(%ebp),%ebx
     39f:	8b 75 10             	mov    0x10(%ebp),%esi
  s = *ps;
     3a2:	8b 38                	mov    (%eax),%edi
  while(s < es && strchr(whitespace, *s))
     3a4:	39 df                	cmp    %ebx,%edi
     3a6:	72 0f                	jb     3b7 <gettoken+0x27>
     3a8:	eb 25                	jmp    3cf <gettoken+0x3f>
     3aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    s++;
     3b0:	83 c7 01             	add    $0x1,%edi
  while(s < es && strchr(whitespace, *s))
     3b3:	39 fb                	cmp    %edi,%ebx
     3b5:	74 18                	je     3cf <gettoken+0x3f>
     3b7:	0f be 07             	movsbl (%edi),%eax
     3ba:	83 ec 08             	sub    $0x8,%esp
     3bd:	50                   	push   %eax
     3be:	68 0c 19 00 00       	push   $0x190c
     3c3:	e8 08 08 00 00       	call   bd0 <strchr>
     3c8:	83 c4 10             	add    $0x10,%esp
     3cb:	85 c0                	test   %eax,%eax
     3cd:	75 e1                	jne    3b0 <gettoken+0x20>
  if(q)
     3cf:	85 f6                	test   %esi,%esi
     3d1:	74 02                	je     3d5 <gettoken+0x45>
    *q = s;
     3d3:	89 3e                	mov    %edi,(%esi)
  ret = *s;
     3d5:	0f b6 07             	movzbl (%edi),%eax
  switch(*s){
     3d8:	3c 3c                	cmp    $0x3c,%al
     3da:	0f 8f d0 00 00 00    	jg     4b0 <gettoken+0x120>
     3e0:	3c 3a                	cmp    $0x3a,%al
     3e2:	0f 8f bc 00 00 00    	jg     4a4 <gettoken+0x114>
     3e8:	84 c0                	test   %al,%al
     3ea:	75 44                	jne    430 <gettoken+0xa0>
     3ec:	31 f6                	xor    %esi,%esi
    ret = 'a';
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
      s++;
    break;
  }
  if(eq)
     3ee:	8b 4d 14             	mov    0x14(%ebp),%ecx
     3f1:	85 c9                	test   %ecx,%ecx
     3f3:	74 05                	je     3fa <gettoken+0x6a>
    *eq = s;
     3f5:	8b 45 14             	mov    0x14(%ebp),%eax
     3f8:	89 38                	mov    %edi,(%eax)

  while(s < es && strchr(whitespace, *s))
     3fa:	39 df                	cmp    %ebx,%edi
     3fc:	72 09                	jb     407 <gettoken+0x77>
     3fe:	eb 1f                	jmp    41f <gettoken+0x8f>
    s++;
     400:	83 c7 01             	add    $0x1,%edi
  while(s < es && strchr(whitespace, *s))
     403:	39 fb                	cmp    %edi,%ebx
     405:	74 18                	je     41f <gettoken+0x8f>
     407:	0f be 07             	movsbl (%edi),%eax
     40a:	83 ec 08             	sub    $0x8,%esp
     40d:	50                   	push   %eax
     40e:	68 0c 19 00 00       	push   $0x190c
     413:	e8 b8 07 00 00       	call   bd0 <strchr>
     418:	83 c4 10             	add    $0x10,%esp
     41b:	85 c0                	test   %eax,%eax
     41d:	75 e1                	jne    400 <gettoken+0x70>
  *ps = s;
     41f:	8b 45 08             	mov    0x8(%ebp),%eax
     422:	89 38                	mov    %edi,(%eax)
  return ret;
}
     424:	8d 65 f4             	lea    -0xc(%ebp),%esp
     427:	89 f0                	mov    %esi,%eax
     429:	5b                   	pop    %ebx
     42a:	5e                   	pop    %esi
     42b:	5f                   	pop    %edi
     42c:	5d                   	pop    %ebp
     42d:	c3                   	ret
     42e:	66 90                	xchg   %ax,%ax
  switch(*s){
     430:	79 66                	jns    498 <gettoken+0x108>
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
     432:	39 df                	cmp    %ebx,%edi
     434:	72 39                	jb     46f <gettoken+0xdf>
  if(eq)
     436:	8b 55 14             	mov    0x14(%ebp),%edx
     439:	85 d2                	test   %edx,%edx
     43b:	0f 84 b3 00 00 00    	je     4f4 <gettoken+0x164>
    *eq = s;
     441:	8b 45 14             	mov    0x14(%ebp),%eax
     444:	89 38                	mov    %edi,(%eax)
  while(s < es && strchr(whitespace, *s))
     446:	e9 a9 00 00 00       	jmp    4f4 <gettoken+0x164>
     44b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     44f:	90                   	nop
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
     450:	0f be 07             	movsbl (%edi),%eax
     453:	83 ec 08             	sub    $0x8,%esp
     456:	50                   	push   %eax
     457:	68 04 19 00 00       	push   $0x1904
     45c:	e8 6f 07 00 00       	call   bd0 <strchr>
     461:	83 c4 10             	add    $0x10,%esp
     464:	85 c0                	test   %eax,%eax
     466:	75 1f                	jne    487 <gettoken+0xf7>
      s++;
     468:	83 c7 01             	add    $0x1,%edi
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
     46b:	39 fb                	cmp    %edi,%ebx
     46d:	74 77                	je     4e6 <gettoken+0x156>
     46f:	0f be 07             	movsbl (%edi),%eax
     472:	83 ec 08             	sub    $0x8,%esp
     475:	50                   	push   %eax
     476:	68 0c 19 00 00       	push   $0x190c
     47b:	e8 50 07 00 00       	call   bd0 <strchr>
     480:	83 c4 10             	add    $0x10,%esp
     483:	85 c0                	test   %eax,%eax
     485:	74 c9                	je     450 <gettoken+0xc0>
    ret = 'a';
     487:	be 61 00 00 00       	mov    $0x61,%esi
     48c:	e9 5d ff ff ff       	jmp    3ee <gettoken+0x5e>
     491:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  switch(*s){
     498:	3c 26                	cmp    $0x26,%al
     49a:	74 08                	je     4a4 <gettoken+0x114>
     49c:	8d 48 d8             	lea    -0x28(%eax),%ecx
     49f:	80 f9 01             	cmp    $0x1,%cl
     4a2:	77 8e                	ja     432 <gettoken+0xa2>
  ret = *s;
     4a4:	0f be f0             	movsbl %al,%esi
    s++;
     4a7:	83 c7 01             	add    $0x1,%edi
    break;
     4aa:	e9 3f ff ff ff       	jmp    3ee <gettoken+0x5e>
     4af:	90                   	nop
  switch(*s){
     4b0:	3c 3e                	cmp    $0x3e,%al
     4b2:	75 1c                	jne    4d0 <gettoken+0x140>
    if(*s == '>'){
     4b4:	80 7f 01 3e          	cmpb   $0x3e,0x1(%edi)
     4b8:	74 1f                	je     4d9 <gettoken+0x149>
    s++;
     4ba:	83 c7 01             	add    $0x1,%edi
  ret = *s;
     4bd:	be 3e 00 00 00       	mov    $0x3e,%esi
     4c2:	e9 27 ff ff ff       	jmp    3ee <gettoken+0x5e>
     4c7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     4ce:	66 90                	xchg   %ax,%ax
  switch(*s){
     4d0:	3c 7c                	cmp    $0x7c,%al
     4d2:	74 d0                	je     4a4 <gettoken+0x114>
     4d4:	e9 59 ff ff ff       	jmp    432 <gettoken+0xa2>
      s++;
     4d9:	83 c7 02             	add    $0x2,%edi
      ret = '+';
     4dc:	be 2b 00 00 00       	mov    $0x2b,%esi
     4e1:	e9 08 ff ff ff       	jmp    3ee <gettoken+0x5e>
  if(eq)
     4e6:	8b 45 14             	mov    0x14(%ebp),%eax
     4e9:	85 c0                	test   %eax,%eax
     4eb:	74 05                	je     4f2 <gettoken+0x162>
    *eq = s;
     4ed:	8b 45 14             	mov    0x14(%ebp),%eax
     4f0:	89 18                	mov    %ebx,(%eax)
      s++;
     4f2:	89 df                	mov    %ebx,%edi
    ret = 'a';
     4f4:	be 61 00 00 00       	mov    $0x61,%esi
     4f9:	e9 21 ff ff ff       	jmp    41f <gettoken+0x8f>
     4fe:	66 90                	xchg   %ax,%ax

00000500 <peek>:

int
peek(char **ps, char *es, char *toks)
{
     500:	55                   	push   %ebp
     501:	89 e5                	mov    %esp,%ebp
     503:	57                   	push   %edi
     504:	56                   	push   %esi
     505:	53                   	push   %ebx
     506:	83 ec 0c             	sub    $0xc,%esp
     509:	8b 7d 08             	mov    0x8(%ebp),%edi
     50c:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *s;

  s = *ps;
     50f:	8b 1f                	mov    (%edi),%ebx
  while(s < es && strchr(whitespace, *s))
     511:	39 f3                	cmp    %esi,%ebx
     513:	72 12                	jb     527 <peek+0x27>
     515:	eb 28                	jmp    53f <peek+0x3f>
     517:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     51e:	66 90                	xchg   %ax,%ax
    s++;
     520:	83 c3 01             	add    $0x1,%ebx
  while(s < es && strchr(whitespace, *s))
     523:	39 de                	cmp    %ebx,%esi
     525:	74 18                	je     53f <peek+0x3f>
     527:	0f be 03             	movsbl (%ebx),%eax
     52a:	83 ec 08             	sub    $0x8,%esp
     52d:	50                   	push   %eax
     52e:	68 0c 19 00 00       	push   $0x190c
     533:	e8 98 06 00 00       	call   bd0 <strchr>
     538:	83 c4 10             	add    $0x10,%esp
     53b:	85 c0                	test   %eax,%eax
     53d:	75 e1                	jne    520 <peek+0x20>
  *ps = s;
     53f:	89 1f                	mov    %ebx,(%edi)
  return *s && strchr(toks, *s);
     541:	0f be 03             	movsbl (%ebx),%eax
     544:	31 d2                	xor    %edx,%edx
     546:	84 c0                	test   %al,%al
     548:	75 0e                	jne    558 <peek+0x58>
}
     54a:	8d 65 f4             	lea    -0xc(%ebp),%esp
     54d:	89 d0                	mov    %edx,%eax
     54f:	5b                   	pop    %ebx
     550:	5e                   	pop    %esi
     551:	5f                   	pop    %edi
     552:	5d                   	pop    %ebp
     553:	c3                   	ret
     554:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  return *s && strchr(toks, *s);
     558:	83 ec 08             	sub    $0x8,%esp
     55b:	50                   	push   %eax
     55c:	ff 75 10             	push   0x10(%ebp)
     55f:	e8 6c 06 00 00       	call   bd0 <strchr>
     564:	83 c4 10             	add    $0x10,%esp
     567:	31 d2                	xor    %edx,%edx
     569:	85 c0                	test   %eax,%eax
     56b:	0f 95 c2             	setne  %dl
}
     56e:	8d 65 f4             	lea    -0xc(%ebp),%esp
     571:	5b                   	pop    %ebx
     572:	89 d0                	mov    %edx,%eax
     574:	5e                   	pop    %esi
     575:	5f                   	pop    %edi
     576:	5d                   	pop    %ebp
     577:	c3                   	ret
     578:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     57f:	90                   	nop

00000580 <parseredirs>:
  return cmd;
}

struct cmd*
parseredirs(struct cmd *cmd, char **ps, char *es)
{
     580:	55                   	push   %ebp
     581:	89 e5                	mov    %esp,%ebp
     583:	57                   	push   %edi
     584:	56                   	push   %esi
     585:	53                   	push   %ebx
     586:	83 ec 2c             	sub    $0x2c,%esp
     589:	8b 75 0c             	mov    0xc(%ebp),%esi
     58c:	8b 5d 10             	mov    0x10(%ebp),%ebx
  int tok;
  char *q, *eq;

  while(peek(ps, es, "<>")){
     58f:	90                   	nop
     590:	83 ec 04             	sub    $0x4,%esp
     593:	68 3d 12 00 00       	push   $0x123d
     598:	53                   	push   %ebx
     599:	56                   	push   %esi
     59a:	e8 61 ff ff ff       	call   500 <peek>
     59f:	83 c4 10             	add    $0x10,%esp
     5a2:	85 c0                	test   %eax,%eax
     5a4:	0f 84 f6 00 00 00    	je     6a0 <parseredirs+0x120>
    tok = gettoken(ps, es, 0, 0);
     5aa:	6a 00                	push   $0x0
     5ac:	6a 00                	push   $0x0
     5ae:	53                   	push   %ebx
     5af:	56                   	push   %esi
     5b0:	e8 db fd ff ff       	call   390 <gettoken>
     5b5:	89 c7                	mov    %eax,%edi
    if(gettoken(ps, es, &q, &eq) != 'a')
     5b7:	8d 45 e4             	lea    -0x1c(%ebp),%eax
     5ba:	50                   	push   %eax
     5bb:	8d 45 e0             	lea    -0x20(%ebp),%eax
     5be:	50                   	push   %eax
     5bf:	53                   	push   %ebx
     5c0:	56                   	push   %esi
     5c1:	e8 ca fd ff ff       	call   390 <gettoken>
     5c6:	83 c4 20             	add    $0x20,%esp
     5c9:	83 f8 61             	cmp    $0x61,%eax
     5cc:	0f 85 d9 00 00 00    	jne    6ab <parseredirs+0x12b>
      panic("missing file for redirection");
    switch(tok){
     5d2:	83 ff 3c             	cmp    $0x3c,%edi
     5d5:	74 69                	je     640 <parseredirs+0xc0>
     5d7:	83 ff 3e             	cmp    $0x3e,%edi
     5da:	74 05                	je     5e1 <parseredirs+0x61>
     5dc:	83 ff 2b             	cmp    $0x2b,%edi
     5df:	75 af                	jne    590 <parseredirs+0x10>
      break;
    case '>':
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
      break;
    case '+':  // >>
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
     5e1:	8b 55 e4             	mov    -0x1c(%ebp),%edx
     5e4:	8b 4d e0             	mov    -0x20(%ebp),%ecx
  cmd = malloc(sizeof(*cmd));
     5e7:	83 ec 0c             	sub    $0xc,%esp
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
     5ea:	89 55 d0             	mov    %edx,-0x30(%ebp)
     5ed:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
  cmd = malloc(sizeof(*cmd));
     5f0:	6a 18                	push   $0x18
     5f2:	e8 d9 0a 00 00       	call   10d0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     5f7:	83 c4 0c             	add    $0xc,%esp
     5fa:	6a 18                	push   $0x18
  cmd = malloc(sizeof(*cmd));
     5fc:	89 c7                	mov    %eax,%edi
  memset(cmd, 0, sizeof(*cmd));
     5fe:	6a 00                	push   $0x0
     600:	50                   	push   %eax
     601:	e8 aa 05 00 00       	call   bb0 <memset>
  cmd->type = REDIR;
     606:	c7 07 02 00 00 00    	movl   $0x2,(%edi)
  cmd->cmd = subcmd;
     60c:	8b 45 08             	mov    0x8(%ebp),%eax
      break;
     60f:	83 c4 10             	add    $0x10,%esp
  cmd->cmd = subcmd;
     612:	89 47 04             	mov    %eax,0x4(%edi)
  cmd->file = file;
     615:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
     618:	89 4f 08             	mov    %ecx,0x8(%edi)
  cmd->efile = efile;
     61b:	8b 55 d0             	mov    -0x30(%ebp),%edx
  cmd->mode = mode;
     61e:	c7 47 10 01 02 00 00 	movl   $0x201,0x10(%edi)
  cmd->efile = efile;
     625:	89 57 0c             	mov    %edx,0xc(%edi)
  cmd->fd = fd;
     628:	c7 47 14 01 00 00 00 	movl   $0x1,0x14(%edi)
      break;
     62f:	89 7d 08             	mov    %edi,0x8(%ebp)
     632:	e9 59 ff ff ff       	jmp    590 <parseredirs+0x10>
     637:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     63e:	66 90                	xchg   %ax,%ax
      cmd = redircmd(cmd, q, eq, O_RDONLY, 0);
     640:	8b 55 e4             	mov    -0x1c(%ebp),%edx
     643:	8b 4d e0             	mov    -0x20(%ebp),%ecx
  cmd = malloc(sizeof(*cmd));
     646:	83 ec 0c             	sub    $0xc,%esp
      cmd = redircmd(cmd, q, eq, O_RDONLY, 0);
     649:	89 55 d0             	mov    %edx,-0x30(%ebp)
     64c:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
  cmd = malloc(sizeof(*cmd));
     64f:	6a 18                	push   $0x18
     651:	e8 7a 0a 00 00       	call   10d0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     656:	83 c4 0c             	add    $0xc,%esp
     659:	6a 18                	push   $0x18
  cmd = malloc(sizeof(*cmd));
     65b:	89 c7                	mov    %eax,%edi
  memset(cmd, 0, sizeof(*cmd));
     65d:	6a 00                	push   $0x0
     65f:	50                   	push   %eax
     660:	e8 4b 05 00 00       	call   bb0 <memset>
  cmd->cmd = subcmd;
     665:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->file = file;
     668:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      break;
     66b:	89 7d 08             	mov    %edi,0x8(%ebp)
  cmd->efile = efile;
     66e:	8b 55 d0             	mov    -0x30(%ebp),%edx
  cmd->type = REDIR;
     671:	c7 07 02 00 00 00    	movl   $0x2,(%edi)
      break;
     677:	83 c4 10             	add    $0x10,%esp
  cmd->cmd = subcmd;
     67a:	89 47 04             	mov    %eax,0x4(%edi)
  cmd->file = file;
     67d:	89 4f 08             	mov    %ecx,0x8(%edi)
  cmd->efile = efile;
     680:	89 57 0c             	mov    %edx,0xc(%edi)
  cmd->mode = mode;
     683:	c7 47 10 00 00 00 00 	movl   $0x0,0x10(%edi)
  cmd->fd = fd;
     68a:	c7 47 14 00 00 00 00 	movl   $0x0,0x14(%edi)
      break;
     691:	e9 fa fe ff ff       	jmp    590 <parseredirs+0x10>
     696:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     69d:	8d 76 00             	lea    0x0(%esi),%esi
    }
  }
  return cmd;
}
     6a0:	8b 45 08             	mov    0x8(%ebp),%eax
     6a3:	8d 65 f4             	lea    -0xc(%ebp),%esp
     6a6:	5b                   	pop    %ebx
     6a7:	5e                   	pop    %esi
     6a8:	5f                   	pop    %edi
     6a9:	5d                   	pop    %ebp
     6aa:	c3                   	ret
      panic("missing file for redirection");
     6ab:	83 ec 0c             	sub    $0xc,%esp
     6ae:	68 20 12 00 00       	push   $0x1220
     6b3:	e8 b8 fa ff ff       	call   170 <panic>
     6b8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     6bf:	90                   	nop

000006c0 <parseexec>:
  return cmd;
}

struct cmd*
parseexec(char **ps, char *es)
{
     6c0:	55                   	push   %ebp
     6c1:	89 e5                	mov    %esp,%ebp
     6c3:	57                   	push   %edi
     6c4:	56                   	push   %esi
     6c5:	53                   	push   %ebx
     6c6:	83 ec 30             	sub    $0x30,%esp
     6c9:	8b 5d 08             	mov    0x8(%ebp),%ebx
     6cc:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *q, *eq;
  int tok, argc;
  struct execcmd *cmd;
  struct cmd *ret;

  if(peek(ps, es, "("))
     6cf:	68 40 12 00 00       	push   $0x1240
     6d4:	56                   	push   %esi
     6d5:	53                   	push   %ebx
     6d6:	e8 25 fe ff ff       	call   500 <peek>
     6db:	83 c4 10             	add    $0x10,%esp
     6de:	85 c0                	test   %eax,%eax
     6e0:	0f 85 aa 00 00 00    	jne    790 <parseexec+0xd0>
  cmd = malloc(sizeof(*cmd));
     6e6:	83 ec 0c             	sub    $0xc,%esp
     6e9:	89 c7                	mov    %eax,%edi
     6eb:	6a 54                	push   $0x54
     6ed:	e8 de 09 00 00       	call   10d0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     6f2:	83 c4 0c             	add    $0xc,%esp
     6f5:	6a 54                	push   $0x54
     6f7:	6a 00                	push   $0x0
     6f9:	89 45 d0             	mov    %eax,-0x30(%ebp)
     6fc:	50                   	push   %eax
     6fd:	e8 ae 04 00 00       	call   bb0 <memset>
  cmd->type = EXEC;
     702:	8b 45 d0             	mov    -0x30(%ebp),%eax

  ret = execcmd();
  cmd = (struct execcmd*)ret;

  argc = 0;
  ret = parseredirs(ret, ps, es);
     705:	83 c4 0c             	add    $0xc,%esp
  cmd->type = EXEC;
     708:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
  ret = parseredirs(ret, ps, es);
     70e:	56                   	push   %esi
     70f:	53                   	push   %ebx
     710:	50                   	push   %eax
     711:	e8 6a fe ff ff       	call   580 <parseredirs>
  while(!peek(ps, es, "|)&;")){
     716:	83 c4 10             	add    $0x10,%esp
  ret = parseredirs(ret, ps, es);
     719:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  while(!peek(ps, es, "|)&;")){
     71c:	eb 15                	jmp    733 <parseexec+0x73>
     71e:	66 90                	xchg   %ax,%ax
    cmd->argv[argc] = q;
    cmd->eargv[argc] = eq;
    argc++;
    if(argc >= MAXARGS)
      panic("too many args");
    ret = parseredirs(ret, ps, es);
     720:	83 ec 04             	sub    $0x4,%esp
     723:	56                   	push   %esi
     724:	53                   	push   %ebx
     725:	ff 75 d4             	push   -0x2c(%ebp)
     728:	e8 53 fe ff ff       	call   580 <parseredirs>
     72d:	83 c4 10             	add    $0x10,%esp
     730:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  while(!peek(ps, es, "|)&;")){
     733:	83 ec 04             	sub    $0x4,%esp
     736:	68 57 12 00 00       	push   $0x1257
     73b:	56                   	push   %esi
     73c:	53                   	push   %ebx
     73d:	e8 be fd ff ff       	call   500 <peek>
     742:	83 c4 10             	add    $0x10,%esp
     745:	85 c0                	test   %eax,%eax
     747:	75 5f                	jne    7a8 <parseexec+0xe8>
    if((tok=gettoken(ps, es, &q, &eq)) == 0)
     749:	8d 45 e4             	lea    -0x1c(%ebp),%eax
     74c:	50                   	push   %eax
     74d:	8d 45 e0             	lea    -0x20(%ebp),%eax
     750:	50                   	push   %eax
     751:	56                   	push   %esi
     752:	53                   	push   %ebx
     753:	e8 38 fc ff ff       	call   390 <gettoken>
     758:	83 c4 10             	add    $0x10,%esp
     75b:	85 c0                	test   %eax,%eax
     75d:	74 49                	je     7a8 <parseexec+0xe8>
    if(tok != 'a')
     75f:	83 f8 61             	cmp    $0x61,%eax
     762:	75 62                	jne    7c6 <parseexec+0x106>
    cmd->argv[argc] = q;
     764:	8b 45 e0             	mov    -0x20(%ebp),%eax
     767:	8b 55 d0             	mov    -0x30(%ebp),%edx
     76a:	89 44 ba 04          	mov    %eax,0x4(%edx,%edi,4)
    cmd->eargv[argc] = eq;
     76e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     771:	89 44 ba 2c          	mov    %eax,0x2c(%edx,%edi,4)
    argc++;
     775:	83 c7 01             	add    $0x1,%edi
    if(argc >= MAXARGS)
     778:	83 ff 0a             	cmp    $0xa,%edi
     77b:	75 a3                	jne    720 <parseexec+0x60>
      panic("too many args");
     77d:	83 ec 0c             	sub    $0xc,%esp
     780:	68 49 12 00 00       	push   $0x1249
     785:	e8 e6 f9 ff ff       	call   170 <panic>
     78a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    return parseblock(ps, es);
     790:	89 75 0c             	mov    %esi,0xc(%ebp)
     793:	89 5d 08             	mov    %ebx,0x8(%ebp)
  }
  cmd->argv[argc] = 0;
  cmd->eargv[argc] = 0;
  return ret;
}
     796:	8d 65 f4             	lea    -0xc(%ebp),%esp
     799:	5b                   	pop    %ebx
     79a:	5e                   	pop    %esi
     79b:	5f                   	pop    %edi
     79c:	5d                   	pop    %ebp
    return parseblock(ps, es);
     79d:	e9 ae 01 00 00       	jmp    950 <parseblock>
     7a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  cmd->argv[argc] = 0;
     7a8:	8b 45 d0             	mov    -0x30(%ebp),%eax
     7ab:	c7 44 b8 04 00 00 00 	movl   $0x0,0x4(%eax,%edi,4)
     7b2:	00 
  cmd->eargv[argc] = 0;
     7b3:	c7 44 b8 2c 00 00 00 	movl   $0x0,0x2c(%eax,%edi,4)
     7ba:	00 
}
     7bb:	8b 45 d4             	mov    -0x2c(%ebp),%eax
     7be:	8d 65 f4             	lea    -0xc(%ebp),%esp
     7c1:	5b                   	pop    %ebx
     7c2:	5e                   	pop    %esi
     7c3:	5f                   	pop    %edi
     7c4:	5d                   	pop    %ebp
     7c5:	c3                   	ret
      panic("syntax");
     7c6:	83 ec 0c             	sub    $0xc,%esp
     7c9:	68 42 12 00 00       	push   $0x1242
     7ce:	e8 9d f9 ff ff       	call   170 <panic>
     7d3:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     7da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000007e0 <parsepipe>:
{
     7e0:	55                   	push   %ebp
     7e1:	89 e5                	mov    %esp,%ebp
     7e3:	57                   	push   %edi
     7e4:	56                   	push   %esi
     7e5:	53                   	push   %ebx
     7e6:	83 ec 14             	sub    $0x14,%esp
     7e9:	8b 75 08             	mov    0x8(%ebp),%esi
     7ec:	8b 7d 0c             	mov    0xc(%ebp),%edi
  cmd = parseexec(ps, es);
     7ef:	57                   	push   %edi
     7f0:	56                   	push   %esi
     7f1:	e8 ca fe ff ff       	call   6c0 <parseexec>
  if(peek(ps, es, "|")){
     7f6:	83 c4 0c             	add    $0xc,%esp
     7f9:	68 5c 12 00 00       	push   $0x125c
  cmd = parseexec(ps, es);
     7fe:	89 c3                	mov    %eax,%ebx
  if(peek(ps, es, "|")){
     800:	57                   	push   %edi
     801:	56                   	push   %esi
     802:	e8 f9 fc ff ff       	call   500 <peek>
     807:	83 c4 10             	add    $0x10,%esp
     80a:	85 c0                	test   %eax,%eax
     80c:	75 12                	jne    820 <parsepipe+0x40>
}
     80e:	8d 65 f4             	lea    -0xc(%ebp),%esp
     811:	89 d8                	mov    %ebx,%eax
     813:	5b                   	pop    %ebx
     814:	5e                   	pop    %esi
     815:	5f                   	pop    %edi
     816:	5d                   	pop    %ebp
     817:	c3                   	ret
     818:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     81f:	90                   	nop
    gettoken(ps, es, 0, 0);
     820:	6a 00                	push   $0x0
     822:	6a 00                	push   $0x0
     824:	57                   	push   %edi
     825:	56                   	push   %esi
     826:	e8 65 fb ff ff       	call   390 <gettoken>
    cmd = pipecmd(cmd, parsepipe(ps, es));
     82b:	58                   	pop    %eax
     82c:	5a                   	pop    %edx
     82d:	57                   	push   %edi
     82e:	56                   	push   %esi
     82f:	e8 ac ff ff ff       	call   7e0 <parsepipe>
  cmd = malloc(sizeof(*cmd));
     834:	c7 04 24 0c 00 00 00 	movl   $0xc,(%esp)
    cmd = pipecmd(cmd, parsepipe(ps, es));
     83b:	89 c7                	mov    %eax,%edi
  cmd = malloc(sizeof(*cmd));
     83d:	e8 8e 08 00 00       	call   10d0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     842:	83 c4 0c             	add    $0xc,%esp
     845:	6a 0c                	push   $0xc
  cmd = malloc(sizeof(*cmd));
     847:	89 c6                	mov    %eax,%esi
  memset(cmd, 0, sizeof(*cmd));
     849:	6a 00                	push   $0x0
     84b:	50                   	push   %eax
     84c:	e8 5f 03 00 00       	call   bb0 <memset>
  cmd->left = left;
     851:	89 5e 04             	mov    %ebx,0x4(%esi)
  cmd->right = right;
     854:	83 c4 10             	add    $0x10,%esp
     857:	89 f3                	mov    %esi,%ebx
  cmd->type = PIPE;
     859:	c7 06 03 00 00 00    	movl   $0x3,(%esi)
}
     85f:	89 d8                	mov    %ebx,%eax
  cmd->right = right;
     861:	89 7e 08             	mov    %edi,0x8(%esi)
}
     864:	8d 65 f4             	lea    -0xc(%ebp),%esp
     867:	5b                   	pop    %ebx
     868:	5e                   	pop    %esi
     869:	5f                   	pop    %edi
     86a:	5d                   	pop    %ebp
     86b:	c3                   	ret
     86c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000870 <parseline>:
{
     870:	55                   	push   %ebp
     871:	89 e5                	mov    %esp,%ebp
     873:	57                   	push   %edi
     874:	56                   	push   %esi
     875:	53                   	push   %ebx
     876:	83 ec 24             	sub    $0x24,%esp
     879:	8b 75 08             	mov    0x8(%ebp),%esi
     87c:	8b 7d 0c             	mov    0xc(%ebp),%edi
  cmd = parsepipe(ps, es);
     87f:	57                   	push   %edi
     880:	56                   	push   %esi
     881:	e8 5a ff ff ff       	call   7e0 <parsepipe>
  while(peek(ps, es, "&")){
     886:	83 c4 10             	add    $0x10,%esp
  cmd = parsepipe(ps, es);
     889:	89 c3                	mov    %eax,%ebx
  while(peek(ps, es, "&")){
     88b:	eb 3b                	jmp    8c8 <parseline+0x58>
     88d:	8d 76 00             	lea    0x0(%esi),%esi
    gettoken(ps, es, 0, 0);
     890:	6a 00                	push   $0x0
     892:	6a 00                	push   $0x0
     894:	57                   	push   %edi
     895:	56                   	push   %esi
     896:	e8 f5 fa ff ff       	call   390 <gettoken>
  cmd = malloc(sizeof(*cmd));
     89b:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
     8a2:	e8 29 08 00 00       	call   10d0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     8a7:	83 c4 0c             	add    $0xc,%esp
     8aa:	6a 08                	push   $0x8
     8ac:	6a 00                	push   $0x0
     8ae:	50                   	push   %eax
     8af:	89 45 e4             	mov    %eax,-0x1c(%ebp)
     8b2:	e8 f9 02 00 00       	call   bb0 <memset>
  cmd->type = BACK;
     8b7:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  cmd->cmd = subcmd;
     8ba:	83 c4 10             	add    $0x10,%esp
  cmd->type = BACK;
     8bd:	c7 02 05 00 00 00    	movl   $0x5,(%edx)
  cmd->cmd = subcmd;
     8c3:	89 5a 04             	mov    %ebx,0x4(%edx)
     8c6:	89 d3                	mov    %edx,%ebx
  while(peek(ps, es, "&")){
     8c8:	83 ec 04             	sub    $0x4,%esp
     8cb:	68 5e 12 00 00       	push   $0x125e
     8d0:	57                   	push   %edi
     8d1:	56                   	push   %esi
     8d2:	e8 29 fc ff ff       	call   500 <peek>
     8d7:	83 c4 10             	add    $0x10,%esp
     8da:	85 c0                	test   %eax,%eax
     8dc:	75 b2                	jne    890 <parseline+0x20>
  if(peek(ps, es, ";")){
     8de:	83 ec 04             	sub    $0x4,%esp
     8e1:	68 5a 12 00 00       	push   $0x125a
     8e6:	57                   	push   %edi
     8e7:	56                   	push   %esi
     8e8:	e8 13 fc ff ff       	call   500 <peek>
     8ed:	83 c4 10             	add    $0x10,%esp
     8f0:	85 c0                	test   %eax,%eax
     8f2:	75 0c                	jne    900 <parseline+0x90>
}
     8f4:	8d 65 f4             	lea    -0xc(%ebp),%esp
     8f7:	89 d8                	mov    %ebx,%eax
     8f9:	5b                   	pop    %ebx
     8fa:	5e                   	pop    %esi
     8fb:	5f                   	pop    %edi
     8fc:	5d                   	pop    %ebp
     8fd:	c3                   	ret
     8fe:	66 90                	xchg   %ax,%ax
    gettoken(ps, es, 0, 0);
     900:	6a 00                	push   $0x0
     902:	6a 00                	push   $0x0
     904:	57                   	push   %edi
     905:	56                   	push   %esi
     906:	e8 85 fa ff ff       	call   390 <gettoken>
    cmd = listcmd(cmd, parseline(ps, es));
     90b:	58                   	pop    %eax
     90c:	5a                   	pop    %edx
     90d:	57                   	push   %edi
     90e:	56                   	push   %esi
     90f:	e8 5c ff ff ff       	call   870 <parseline>
  cmd = malloc(sizeof(*cmd));
     914:	c7 04 24 0c 00 00 00 	movl   $0xc,(%esp)
    cmd = listcmd(cmd, parseline(ps, es));
     91b:	89 c7                	mov    %eax,%edi
  cmd = malloc(sizeof(*cmd));
     91d:	e8 ae 07 00 00       	call   10d0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     922:	83 c4 0c             	add    $0xc,%esp
     925:	6a 0c                	push   $0xc
  cmd = malloc(sizeof(*cmd));
     927:	89 c6                	mov    %eax,%esi
  memset(cmd, 0, sizeof(*cmd));
     929:	6a 00                	push   $0x0
     92b:	50                   	push   %eax
     92c:	e8 7f 02 00 00       	call   bb0 <memset>
  cmd->left = left;
     931:	89 5e 04             	mov    %ebx,0x4(%esi)
  cmd->right = right;
     934:	83 c4 10             	add    $0x10,%esp
     937:	89 f3                	mov    %esi,%ebx
  cmd->type = LIST;
     939:	c7 06 04 00 00 00    	movl   $0x4,(%esi)
}
     93f:	89 d8                	mov    %ebx,%eax
  cmd->right = right;
     941:	89 7e 08             	mov    %edi,0x8(%esi)
}
     944:	8d 65 f4             	lea    -0xc(%ebp),%esp
     947:	5b                   	pop    %ebx
     948:	5e                   	pop    %esi
     949:	5f                   	pop    %edi
     94a:	5d                   	pop    %ebp
     94b:	c3                   	ret
     94c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000950 <parseblock>:
{
     950:	55                   	push   %ebp
     951:	89 e5                	mov    %esp,%ebp
     953:	57                   	push   %edi
     954:	56                   	push   %esi
     955:	53                   	push   %ebx
     956:	83 ec 10             	sub    $0x10,%esp
     959:	8b 5d 08             	mov    0x8(%ebp),%ebx
     95c:	8b 75 0c             	mov    0xc(%ebp),%esi
  if(!peek(ps, es, "("))
     95f:	68 40 12 00 00       	push   $0x1240
     964:	56                   	push   %esi
     965:	53                   	push   %ebx
     966:	e8 95 fb ff ff       	call   500 <peek>
     96b:	83 c4 10             	add    $0x10,%esp
     96e:	85 c0                	test   %eax,%eax
     970:	74 4a                	je     9bc <parseblock+0x6c>
  gettoken(ps, es, 0, 0);
     972:	6a 00                	push   $0x0
     974:	6a 00                	push   $0x0
     976:	56                   	push   %esi
     977:	53                   	push   %ebx
     978:	e8 13 fa ff ff       	call   390 <gettoken>
  cmd = parseline(ps, es);
     97d:	58                   	pop    %eax
     97e:	5a                   	pop    %edx
     97f:	56                   	push   %esi
     980:	53                   	push   %ebx
     981:	e8 ea fe ff ff       	call   870 <parseline>
  if(!peek(ps, es, ")"))
     986:	83 c4 0c             	add    $0xc,%esp
     989:	68 7c 12 00 00       	push   $0x127c
  cmd = parseline(ps, es);
     98e:	89 c7                	mov    %eax,%edi
  if(!peek(ps, es, ")"))
     990:	56                   	push   %esi
     991:	53                   	push   %ebx
     992:	e8 69 fb ff ff       	call   500 <peek>
     997:	83 c4 10             	add    $0x10,%esp
     99a:	85 c0                	test   %eax,%eax
     99c:	74 2b                	je     9c9 <parseblock+0x79>
  gettoken(ps, es, 0, 0);
     99e:	6a 00                	push   $0x0
     9a0:	6a 00                	push   $0x0
     9a2:	56                   	push   %esi
     9a3:	53                   	push   %ebx
     9a4:	e8 e7 f9 ff ff       	call   390 <gettoken>
  cmd = parseredirs(cmd, ps, es);
     9a9:	83 c4 0c             	add    $0xc,%esp
     9ac:	56                   	push   %esi
     9ad:	53                   	push   %ebx
     9ae:	57                   	push   %edi
     9af:	e8 cc fb ff ff       	call   580 <parseredirs>
}
     9b4:	8d 65 f4             	lea    -0xc(%ebp),%esp
     9b7:	5b                   	pop    %ebx
     9b8:	5e                   	pop    %esi
     9b9:	5f                   	pop    %edi
     9ba:	5d                   	pop    %ebp
     9bb:	c3                   	ret
    panic("parseblock");
     9bc:	83 ec 0c             	sub    $0xc,%esp
     9bf:	68 60 12 00 00       	push   $0x1260
     9c4:	e8 a7 f7 ff ff       	call   170 <panic>
    panic("syntax - missing )");
     9c9:	83 ec 0c             	sub    $0xc,%esp
     9cc:	68 6b 12 00 00       	push   $0x126b
     9d1:	e8 9a f7 ff ff       	call   170 <panic>
     9d6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     9dd:	8d 76 00             	lea    0x0(%esi),%esi

000009e0 <nulterminate>:

// NUL-terminate all the counted strings.
struct cmd*
nulterminate(struct cmd *cmd)
{
     9e0:	55                   	push   %ebp
     9e1:	89 e5                	mov    %esp,%ebp
     9e3:	53                   	push   %ebx
     9e4:	83 ec 04             	sub    $0x4,%esp
     9e7:	8b 5d 08             	mov    0x8(%ebp),%ebx
  struct execcmd *ecmd;
  struct listcmd *lcmd;
  struct pipecmd *pcmd;
  struct redircmd *rcmd;

  if(cmd == 0)
     9ea:	85 db                	test   %ebx,%ebx
     9ec:	0f 84 7e 00 00 00    	je     a70 <nulterminate+0x90>
    return 0;

  switch(cmd->type){
     9f2:	83 3b 05             	cmpl   $0x5,(%ebx)
     9f5:	77 20                	ja     a17 <nulterminate+0x37>
     9f7:	8b 03                	mov    (%ebx),%eax
     9f9:	ff 24 85 dc 12 00 00 	jmp    *0x12dc(,%eax,4)
    nulterminate(pcmd->right);
    break;

  case LIST:
    lcmd = (struct listcmd*)cmd;
    nulterminate(lcmd->left);
     a00:	83 ec 0c             	sub    $0xc,%esp
     a03:	ff 73 04             	push   0x4(%ebx)
     a06:	e8 d5 ff ff ff       	call   9e0 <nulterminate>
    nulterminate(lcmd->right);
     a0b:	58                   	pop    %eax
     a0c:	ff 73 08             	push   0x8(%ebx)
     a0f:	e8 cc ff ff ff       	call   9e0 <nulterminate>
    break;
     a14:	83 c4 10             	add    $0x10,%esp
    return 0;
     a17:	89 d8                	mov    %ebx,%eax
    bcmd = (struct backcmd*)cmd;
    nulterminate(bcmd->cmd);
    break;
  }
  return cmd;
}
     a19:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     a1c:	c9                   	leave
     a1d:	c3                   	ret
     a1e:	66 90                	xchg   %ax,%ax
    nulterminate(bcmd->cmd);
     a20:	83 ec 0c             	sub    $0xc,%esp
     a23:	ff 73 04             	push   0x4(%ebx)
     a26:	e8 b5 ff ff ff       	call   9e0 <nulterminate>
    break;
     a2b:	83 c4 10             	add    $0x10,%esp
     a2e:	eb e7                	jmp    a17 <nulterminate+0x37>
    for(i=0; ecmd->argv[i]; i++)
     a30:	8b 4b 04             	mov    0x4(%ebx),%ecx
     a33:	8d 43 08             	lea    0x8(%ebx),%eax
     a36:	85 c9                	test   %ecx,%ecx
     a38:	74 dd                	je     a17 <nulterminate+0x37>
     a3a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      *ecmd->eargv[i] = 0;
     a40:	8b 50 24             	mov    0x24(%eax),%edx
    for(i=0; ecmd->argv[i]; i++)
     a43:	83 c0 04             	add    $0x4,%eax
      *ecmd->eargv[i] = 0;
     a46:	c6 02 00             	movb   $0x0,(%edx)
    for(i=0; ecmd->argv[i]; i++)
     a49:	8b 50 fc             	mov    -0x4(%eax),%edx
     a4c:	85 d2                	test   %edx,%edx
     a4e:	75 f0                	jne    a40 <nulterminate+0x60>
     a50:	eb c5                	jmp    a17 <nulterminate+0x37>
     a52:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    nulterminate(rcmd->cmd);
     a58:	83 ec 0c             	sub    $0xc,%esp
     a5b:	ff 73 04             	push   0x4(%ebx)
     a5e:	e8 7d ff ff ff       	call   9e0 <nulterminate>
    *rcmd->efile = 0;
     a63:	8b 43 0c             	mov    0xc(%ebx),%eax
    break;
     a66:	83 c4 10             	add    $0x10,%esp
    *rcmd->efile = 0;
     a69:	c6 00 00             	movb   $0x0,(%eax)
    break;
     a6c:	eb a9                	jmp    a17 <nulterminate+0x37>
     a6e:	66 90                	xchg   %ax,%ax
    return 0;
     a70:	31 c0                	xor    %eax,%eax
     a72:	eb a5                	jmp    a19 <nulterminate+0x39>
     a74:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     a7b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     a7f:	90                   	nop

00000a80 <parsecmd>:
{
     a80:	55                   	push   %ebp
     a81:	89 e5                	mov    %esp,%ebp
     a83:	57                   	push   %edi
     a84:	56                   	push   %esi
  cmd = parseline(&s, es);
     a85:	8d 7d 08             	lea    0x8(%ebp),%edi
{
     a88:	53                   	push   %ebx
     a89:	83 ec 18             	sub    $0x18,%esp
  es = s + strlen(s);
     a8c:	8b 5d 08             	mov    0x8(%ebp),%ebx
     a8f:	53                   	push   %ebx
     a90:	e8 eb 00 00 00       	call   b80 <strlen>
  cmd = parseline(&s, es);
     a95:	59                   	pop    %ecx
     a96:	5e                   	pop    %esi
  es = s + strlen(s);
     a97:	01 c3                	add    %eax,%ebx
  cmd = parseline(&s, es);
     a99:	53                   	push   %ebx
     a9a:	57                   	push   %edi
     a9b:	e8 d0 fd ff ff       	call   870 <parseline>
  peek(&s, es, "");
     aa0:	83 c4 0c             	add    $0xc,%esp
     aa3:	68 d1 11 00 00       	push   $0x11d1
  cmd = parseline(&s, es);
     aa8:	89 c6                	mov    %eax,%esi
  peek(&s, es, "");
     aaa:	53                   	push   %ebx
     aab:	57                   	push   %edi
     aac:	e8 4f fa ff ff       	call   500 <peek>
  if(s != es){
     ab1:	8b 45 08             	mov    0x8(%ebp),%eax
     ab4:	83 c4 10             	add    $0x10,%esp
     ab7:	39 d8                	cmp    %ebx,%eax
     ab9:	75 13                	jne    ace <parsecmd+0x4e>
  nulterminate(cmd);
     abb:	83 ec 0c             	sub    $0xc,%esp
     abe:	56                   	push   %esi
     abf:	e8 1c ff ff ff       	call   9e0 <nulterminate>
}
     ac4:	8d 65 f4             	lea    -0xc(%ebp),%esp
     ac7:	89 f0                	mov    %esi,%eax
     ac9:	5b                   	pop    %ebx
     aca:	5e                   	pop    %esi
     acb:	5f                   	pop    %edi
     acc:	5d                   	pop    %ebp
     acd:	c3                   	ret
    printf(2, "leftovers: %s\n", s);
     ace:	52                   	push   %edx
     acf:	50                   	push   %eax
     ad0:	68 7e 12 00 00       	push   $0x127e
     ad5:	6a 02                	push   $0x2
     ad7:	e8 b4 03 00 00       	call   e90 <printf>
    panic("syntax");
     adc:	c7 04 24 42 12 00 00 	movl   $0x1242,(%esp)
     ae3:	e8 88 f6 ff ff       	call   170 <panic>
     ae8:	66 90                	xchg   %ax,%ax
     aea:	66 90                	xchg   %ax,%ax
     aec:	66 90                	xchg   %ax,%ax
     aee:	66 90                	xchg   %ax,%ax

00000af0 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
     af0:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
     af1:	31 c0                	xor    %eax,%eax
{
     af3:	89 e5                	mov    %esp,%ebp
     af5:	53                   	push   %ebx
     af6:	8b 4d 08             	mov    0x8(%ebp),%ecx
     af9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
     afc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
     b00:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
     b04:	88 14 01             	mov    %dl,(%ecx,%eax,1)
     b07:	83 c0 01             	add    $0x1,%eax
     b0a:	84 d2                	test   %dl,%dl
     b0c:	75 f2                	jne    b00 <strcpy+0x10>
    ;
  return os;
}
     b0e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     b11:	89 c8                	mov    %ecx,%eax
     b13:	c9                   	leave
     b14:	c3                   	ret
     b15:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     b1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000b20 <strcmp>:

int
strcmp(const char *p, const char *q)
{
     b20:	55                   	push   %ebp
     b21:	89 e5                	mov    %esp,%ebp
     b23:	53                   	push   %ebx
     b24:	8b 55 08             	mov    0x8(%ebp),%edx
     b27:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
     b2a:	0f b6 02             	movzbl (%edx),%eax
     b2d:	84 c0                	test   %al,%al
     b2f:	75 17                	jne    b48 <strcmp+0x28>
     b31:	eb 3a                	jmp    b6d <strcmp+0x4d>
     b33:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     b37:	90                   	nop
     b38:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
     b3c:	83 c2 01             	add    $0x1,%edx
     b3f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
     b42:	84 c0                	test   %al,%al
     b44:	74 1a                	je     b60 <strcmp+0x40>
    p++, q++;
     b46:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
     b48:	0f b6 19             	movzbl (%ecx),%ebx
     b4b:	38 c3                	cmp    %al,%bl
     b4d:	74 e9                	je     b38 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
     b4f:	29 d8                	sub    %ebx,%eax
}
     b51:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     b54:	c9                   	leave
     b55:	c3                   	ret
     b56:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     b5d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
     b60:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
     b64:	31 c0                	xor    %eax,%eax
     b66:	29 d8                	sub    %ebx,%eax
}
     b68:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     b6b:	c9                   	leave
     b6c:	c3                   	ret
  return (uchar)*p - (uchar)*q;
     b6d:	0f b6 19             	movzbl (%ecx),%ebx
     b70:	31 c0                	xor    %eax,%eax
     b72:	eb db                	jmp    b4f <strcmp+0x2f>
     b74:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     b7b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     b7f:	90                   	nop

00000b80 <strlen>:

uint
strlen(char *s)
{
     b80:	55                   	push   %ebp
     b81:	89 e5                	mov    %esp,%ebp
     b83:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
     b86:	80 3a 00             	cmpb   $0x0,(%edx)
     b89:	74 15                	je     ba0 <strlen+0x20>
     b8b:	31 c0                	xor    %eax,%eax
     b8d:	8d 76 00             	lea    0x0(%esi),%esi
     b90:	83 c0 01             	add    $0x1,%eax
     b93:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
     b97:	89 c1                	mov    %eax,%ecx
     b99:	75 f5                	jne    b90 <strlen+0x10>
    ;
  return n;
}
     b9b:	89 c8                	mov    %ecx,%eax
     b9d:	5d                   	pop    %ebp
     b9e:	c3                   	ret
     b9f:	90                   	nop
  for(n = 0; s[n]; n++)
     ba0:	31 c9                	xor    %ecx,%ecx
}
     ba2:	5d                   	pop    %ebp
     ba3:	89 c8                	mov    %ecx,%eax
     ba5:	c3                   	ret
     ba6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     bad:	8d 76 00             	lea    0x0(%esi),%esi

00000bb0 <memset>:

void*
memset(void *dst, int c, uint n)
{
     bb0:	55                   	push   %ebp
     bb1:	89 e5                	mov    %esp,%ebp
     bb3:	57                   	push   %edi
     bb4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
     bb7:	8b 4d 10             	mov    0x10(%ebp),%ecx
     bba:	8b 45 0c             	mov    0xc(%ebp),%eax
     bbd:	89 d7                	mov    %edx,%edi
     bbf:	fc                   	cld
     bc0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
     bc2:	8b 7d fc             	mov    -0x4(%ebp),%edi
     bc5:	89 d0                	mov    %edx,%eax
     bc7:	c9                   	leave
     bc8:	c3                   	ret
     bc9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000bd0 <strchr>:

char*
strchr(const char *s, char c)
{
     bd0:	55                   	push   %ebp
     bd1:	89 e5                	mov    %esp,%ebp
     bd3:	8b 45 08             	mov    0x8(%ebp),%eax
     bd6:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
     bda:	0f b6 10             	movzbl (%eax),%edx
     bdd:	84 d2                	test   %dl,%dl
     bdf:	75 12                	jne    bf3 <strchr+0x23>
     be1:	eb 1d                	jmp    c00 <strchr+0x30>
     be3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     be7:	90                   	nop
     be8:	0f b6 50 01          	movzbl 0x1(%eax),%edx
     bec:	83 c0 01             	add    $0x1,%eax
     bef:	84 d2                	test   %dl,%dl
     bf1:	74 0d                	je     c00 <strchr+0x30>
    if(*s == c)
     bf3:	38 d1                	cmp    %dl,%cl
     bf5:	75 f1                	jne    be8 <strchr+0x18>
      return (char*)s;
  return 0;
}
     bf7:	5d                   	pop    %ebp
     bf8:	c3                   	ret
     bf9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
     c00:	31 c0                	xor    %eax,%eax
}
     c02:	5d                   	pop    %ebp
     c03:	c3                   	ret
     c04:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     c0b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     c0f:	90                   	nop

00000c10 <gets>:

char*
gets(char *buf, int max)
{
     c10:	55                   	push   %ebp
     c11:	89 e5                	mov    %esp,%ebp
     c13:	57                   	push   %edi
     c14:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
     c15:	8d 75 e7             	lea    -0x19(%ebp),%esi
{
     c18:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
     c19:	31 db                	xor    %ebx,%ebx
{
     c1b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
     c1e:	eb 27                	jmp    c47 <gets+0x37>
    cc = read(0, &c, 1);
     c20:	83 ec 04             	sub    $0x4,%esp
     c23:	6a 01                	push   $0x1
     c25:	56                   	push   %esi
     c26:	6a 00                	push   $0x0
     c28:	e8 1e 01 00 00       	call   d4b <read>
    if(cc < 1)
     c2d:	83 c4 10             	add    $0x10,%esp
     c30:	85 c0                	test   %eax,%eax
     c32:	7e 1d                	jle    c51 <gets+0x41>
      break;
    buf[i++] = c;
     c34:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
     c38:	8b 55 08             	mov    0x8(%ebp),%edx
     c3b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
     c3f:	3c 0a                	cmp    $0xa,%al
     c41:	74 10                	je     c53 <gets+0x43>
     c43:	3c 0d                	cmp    $0xd,%al
     c45:	74 0c                	je     c53 <gets+0x43>
  for(i=0; i+1 < max; ){
     c47:	89 df                	mov    %ebx,%edi
     c49:	83 c3 01             	add    $0x1,%ebx
     c4c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
     c4f:	7c cf                	jl     c20 <gets+0x10>
     c51:	89 fb                	mov    %edi,%ebx
      break;
  }
  buf[i] = '\0';
     c53:	8b 45 08             	mov    0x8(%ebp),%eax
     c56:	c6 04 18 00          	movb   $0x0,(%eax,%ebx,1)
  return buf;
}
     c5a:	8d 65 f4             	lea    -0xc(%ebp),%esp
     c5d:	5b                   	pop    %ebx
     c5e:	5e                   	pop    %esi
     c5f:	5f                   	pop    %edi
     c60:	5d                   	pop    %ebp
     c61:	c3                   	ret
     c62:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     c69:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000c70 <stat>:

int
stat(char *n, struct stat *st)
{
     c70:	55                   	push   %ebp
     c71:	89 e5                	mov    %esp,%ebp
     c73:	56                   	push   %esi
     c74:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
     c75:	83 ec 08             	sub    $0x8,%esp
     c78:	6a 00                	push   $0x0
     c7a:	ff 75 08             	push   0x8(%ebp)
     c7d:	e8 f1 00 00 00       	call   d73 <open>
  if(fd < 0)
     c82:	83 c4 10             	add    $0x10,%esp
     c85:	85 c0                	test   %eax,%eax
     c87:	78 27                	js     cb0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
     c89:	83 ec 08             	sub    $0x8,%esp
     c8c:	ff 75 0c             	push   0xc(%ebp)
     c8f:	89 c3                	mov    %eax,%ebx
     c91:	50                   	push   %eax
     c92:	e8 f4 00 00 00       	call   d8b <fstat>
  close(fd);
     c97:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
     c9a:	89 c6                	mov    %eax,%esi
  close(fd);
     c9c:	e8 ba 00 00 00       	call   d5b <close>
  return r;
     ca1:	83 c4 10             	add    $0x10,%esp
}
     ca4:	8d 65 f8             	lea    -0x8(%ebp),%esp
     ca7:	89 f0                	mov    %esi,%eax
     ca9:	5b                   	pop    %ebx
     caa:	5e                   	pop    %esi
     cab:	5d                   	pop    %ebp
     cac:	c3                   	ret
     cad:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
     cb0:	be ff ff ff ff       	mov    $0xffffffff,%esi
     cb5:	eb ed                	jmp    ca4 <stat+0x34>
     cb7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     cbe:	66 90                	xchg   %ax,%ax

00000cc0 <atoi>:

int
atoi(const char *s)
{
     cc0:	55                   	push   %ebp
     cc1:	89 e5                	mov    %esp,%ebp
     cc3:	53                   	push   %ebx
     cc4:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
     cc7:	0f be 02             	movsbl (%edx),%eax
     cca:	8d 48 d0             	lea    -0x30(%eax),%ecx
     ccd:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
     cd0:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
     cd5:	77 1e                	ja     cf5 <atoi+0x35>
     cd7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     cde:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
     ce0:	83 c2 01             	add    $0x1,%edx
     ce3:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
     ce6:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
     cea:	0f be 02             	movsbl (%edx),%eax
     ced:	8d 58 d0             	lea    -0x30(%eax),%ebx
     cf0:	80 fb 09             	cmp    $0x9,%bl
     cf3:	76 eb                	jbe    ce0 <atoi+0x20>
  return n;
}
     cf5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     cf8:	89 c8                	mov    %ecx,%eax
     cfa:	c9                   	leave
     cfb:	c3                   	ret
     cfc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000d00 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
     d00:	55                   	push   %ebp
     d01:	89 e5                	mov    %esp,%ebp
     d03:	57                   	push   %edi
     d04:	56                   	push   %esi
     d05:	8b 45 10             	mov    0x10(%ebp),%eax
     d08:	8b 55 08             	mov    0x8(%ebp),%edx
     d0b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
     d0e:	85 c0                	test   %eax,%eax
     d10:	7e 13                	jle    d25 <memmove+0x25>
     d12:	01 d0                	add    %edx,%eax
  dst = vdst;
     d14:	89 d7                	mov    %edx,%edi
     d16:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     d1d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
     d20:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
     d21:	39 f8                	cmp    %edi,%eax
     d23:	75 fb                	jne    d20 <memmove+0x20>
  return vdst;
}
     d25:	5e                   	pop    %esi
     d26:	89 d0                	mov    %edx,%eax
     d28:	5f                   	pop    %edi
     d29:	5d                   	pop    %ebp
     d2a:	c3                   	ret

00000d2b <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
     d2b:	b8 01 00 00 00       	mov    $0x1,%eax
     d30:	cd 40                	int    $0x40
     d32:	c3                   	ret

00000d33 <exit>:
SYSCALL(exit)
     d33:	b8 02 00 00 00       	mov    $0x2,%eax
     d38:	cd 40                	int    $0x40
     d3a:	c3                   	ret

00000d3b <wait>:
SYSCALL(wait)
     d3b:	b8 03 00 00 00       	mov    $0x3,%eax
     d40:	cd 40                	int    $0x40
     d42:	c3                   	ret

00000d43 <pipe>:
SYSCALL(pipe)
     d43:	b8 04 00 00 00       	mov    $0x4,%eax
     d48:	cd 40                	int    $0x40
     d4a:	c3                   	ret

00000d4b <read>:
SYSCALL(read)
     d4b:	b8 05 00 00 00       	mov    $0x5,%eax
     d50:	cd 40                	int    $0x40
     d52:	c3                   	ret

00000d53 <write>:
SYSCALL(write)
     d53:	b8 10 00 00 00       	mov    $0x10,%eax
     d58:	cd 40                	int    $0x40
     d5a:	c3                   	ret

00000d5b <close>:
SYSCALL(close)
     d5b:	b8 15 00 00 00       	mov    $0x15,%eax
     d60:	cd 40                	int    $0x40
     d62:	c3                   	ret

00000d63 <kill>:
SYSCALL(kill)
     d63:	b8 06 00 00 00       	mov    $0x6,%eax
     d68:	cd 40                	int    $0x40
     d6a:	c3                   	ret

00000d6b <exec>:
SYSCALL(exec)
     d6b:	b8 07 00 00 00       	mov    $0x7,%eax
     d70:	cd 40                	int    $0x40
     d72:	c3                   	ret

00000d73 <open>:
SYSCALL(open)
     d73:	b8 0f 00 00 00       	mov    $0xf,%eax
     d78:	cd 40                	int    $0x40
     d7a:	c3                   	ret

00000d7b <mknod>:
SYSCALL(mknod)
     d7b:	b8 11 00 00 00       	mov    $0x11,%eax
     d80:	cd 40                	int    $0x40
     d82:	c3                   	ret

00000d83 <unlink>:
SYSCALL(unlink)
     d83:	b8 12 00 00 00       	mov    $0x12,%eax
     d88:	cd 40                	int    $0x40
     d8a:	c3                   	ret

00000d8b <fstat>:
SYSCALL(fstat)
     d8b:	b8 08 00 00 00       	mov    $0x8,%eax
     d90:	cd 40                	int    $0x40
     d92:	c3                   	ret

00000d93 <link>:
SYSCALL(link)
     d93:	b8 13 00 00 00       	mov    $0x13,%eax
     d98:	cd 40                	int    $0x40
     d9a:	c3                   	ret

00000d9b <mkdir>:
SYSCALL(mkdir)
     d9b:	b8 14 00 00 00       	mov    $0x14,%eax
     da0:	cd 40                	int    $0x40
     da2:	c3                   	ret

00000da3 <chdir>:
SYSCALL(chdir)
     da3:	b8 09 00 00 00       	mov    $0x9,%eax
     da8:	cd 40                	int    $0x40
     daa:	c3                   	ret

00000dab <dup>:
SYSCALL(dup)
     dab:	b8 0a 00 00 00       	mov    $0xa,%eax
     db0:	cd 40                	int    $0x40
     db2:	c3                   	ret

00000db3 <getpid>:
SYSCALL(getpid)
     db3:	b8 0b 00 00 00       	mov    $0xb,%eax
     db8:	cd 40                	int    $0x40
     dba:	c3                   	ret

00000dbb <sbrk>:
SYSCALL(sbrk)
     dbb:	b8 0c 00 00 00       	mov    $0xc,%eax
     dc0:	cd 40                	int    $0x40
     dc2:	c3                   	ret

00000dc3 <sleep>:
SYSCALL(sleep)
     dc3:	b8 0d 00 00 00       	mov    $0xd,%eax
     dc8:	cd 40                	int    $0x40
     dca:	c3                   	ret

00000dcb <uptime>:
SYSCALL(uptime)
     dcb:	b8 0e 00 00 00       	mov    $0xe,%eax
     dd0:	cd 40                	int    $0x40
     dd2:	c3                   	ret

00000dd3 <shutdown>:
SYSCALL(shutdown)
     dd3:	b8 16 00 00 00       	mov    $0x16,%eax
     dd8:	cd 40                	int    $0x40
     dda:	c3                   	ret

00000ddb <exit2>:
SYSCALL(exit2)
     ddb:	b8 17 00 00 00       	mov    $0x17,%eax
     de0:	cd 40                	int    $0x40
     de2:	c3                   	ret

00000de3 <echo2>:
SYSCALL(echo2)
     de3:	b8 18 00 00 00       	mov    $0x18,%eax
     de8:	cd 40                	int    $0x40
     dea:	c3                   	ret
     deb:	66 90                	xchg   %ax,%ax
     ded:	66 90                	xchg   %ax,%ax
     def:	90                   	nop

00000df0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
     df0:	55                   	push   %ebp
     df1:	89 e5                	mov    %esp,%ebp
     df3:	57                   	push   %edi
     df4:	56                   	push   %esi
     df5:	53                   	push   %ebx
     df6:	89 cb                	mov    %ecx,%ebx
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
     df8:	89 d1                	mov    %edx,%ecx
{
     dfa:	83 ec 3c             	sub    $0x3c,%esp
     dfd:	89 45 c0             	mov    %eax,-0x40(%ebp)
  if(sgn && xx < 0){
     e00:	85 d2                	test   %edx,%edx
     e02:	0f 89 80 00 00 00    	jns    e88 <printint+0x98>
     e08:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
     e0c:	74 7a                	je     e88 <printint+0x98>
    x = -xx;
     e0e:	f7 d9                	neg    %ecx
    neg = 1;
     e10:	b8 01 00 00 00       	mov    $0x1,%eax
  } else {
    x = xx;
  }

  i = 0;
     e15:	89 45 c4             	mov    %eax,-0x3c(%ebp)
     e18:	31 f6                	xor    %esi,%esi
     e1a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
     e20:	89 c8                	mov    %ecx,%eax
     e22:	31 d2                	xor    %edx,%edx
     e24:	89 f7                	mov    %esi,%edi
     e26:	f7 f3                	div    %ebx
     e28:	8d 76 01             	lea    0x1(%esi),%esi
     e2b:	0f b6 92 54 13 00 00 	movzbl 0x1354(%edx),%edx
     e32:	88 54 35 d7          	mov    %dl,-0x29(%ebp,%esi,1)
  }while((x /= base) != 0);
     e36:	89 ca                	mov    %ecx,%edx
     e38:	89 c1                	mov    %eax,%ecx
     e3a:	39 da                	cmp    %ebx,%edx
     e3c:	73 e2                	jae    e20 <printint+0x30>
  if(neg)
     e3e:	8b 45 c4             	mov    -0x3c(%ebp),%eax
     e41:	85 c0                	test   %eax,%eax
     e43:	74 07                	je     e4c <printint+0x5c>
    buf[i++] = '-';
     e45:	c6 44 35 d8 2d       	movb   $0x2d,-0x28(%ebp,%esi,1)
    buf[i++] = digits[x % base];
     e4a:	89 f7                	mov    %esi,%edi
     e4c:	8d 5d d8             	lea    -0x28(%ebp),%ebx
     e4f:	8b 75 c0             	mov    -0x40(%ebp),%esi
     e52:	01 df                	add    %ebx,%edi
     e54:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

  while(--i >= 0)
    putc(fd, buf[i]);
     e58:	0f b6 07             	movzbl (%edi),%eax
  write(fd, &c, 1);
     e5b:	83 ec 04             	sub    $0x4,%esp
     e5e:	88 45 d7             	mov    %al,-0x29(%ebp)
     e61:	8d 45 d7             	lea    -0x29(%ebp),%eax
     e64:	6a 01                	push   $0x1
     e66:	50                   	push   %eax
     e67:	56                   	push   %esi
     e68:	e8 e6 fe ff ff       	call   d53 <write>
  while(--i >= 0)
     e6d:	89 f8                	mov    %edi,%eax
     e6f:	83 c4 10             	add    $0x10,%esp
     e72:	83 ef 01             	sub    $0x1,%edi
     e75:	39 d8                	cmp    %ebx,%eax
     e77:	75 df                	jne    e58 <printint+0x68>
}
     e79:	8d 65 f4             	lea    -0xc(%ebp),%esp
     e7c:	5b                   	pop    %ebx
     e7d:	5e                   	pop    %esi
     e7e:	5f                   	pop    %edi
     e7f:	5d                   	pop    %ebp
     e80:	c3                   	ret
     e81:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
     e88:	31 c0                	xor    %eax,%eax
     e8a:	eb 89                	jmp    e15 <printint+0x25>
     e8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000e90 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
     e90:	55                   	push   %ebp
     e91:	89 e5                	mov    %esp,%ebp
     e93:	57                   	push   %edi
     e94:	56                   	push   %esi
     e95:	53                   	push   %ebx
     e96:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
     e99:	8b 75 0c             	mov    0xc(%ebp),%esi
{
     e9c:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i = 0; fmt[i]; i++){
     e9f:	0f b6 1e             	movzbl (%esi),%ebx
     ea2:	83 c6 01             	add    $0x1,%esi
     ea5:	84 db                	test   %bl,%bl
     ea7:	74 67                	je     f10 <printf+0x80>
     ea9:	8d 4d 10             	lea    0x10(%ebp),%ecx
     eac:	31 d2                	xor    %edx,%edx
     eae:	89 4d d0             	mov    %ecx,-0x30(%ebp)
     eb1:	eb 34                	jmp    ee7 <printf+0x57>
     eb3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     eb7:	90                   	nop
     eb8:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
     ebb:	ba 25 00 00 00       	mov    $0x25,%edx
      if(c == '%'){
     ec0:	83 f8 25             	cmp    $0x25,%eax
     ec3:	74 18                	je     edd <printf+0x4d>
  write(fd, &c, 1);
     ec5:	83 ec 04             	sub    $0x4,%esp
     ec8:	8d 45 e7             	lea    -0x19(%ebp),%eax
     ecb:	88 5d e7             	mov    %bl,-0x19(%ebp)
     ece:	6a 01                	push   $0x1
     ed0:	50                   	push   %eax
     ed1:	57                   	push   %edi
     ed2:	e8 7c fe ff ff       	call   d53 <write>
     ed7:	8b 55 d4             	mov    -0x2c(%ebp),%edx
      } else {
        putc(fd, c);
     eda:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
     edd:	0f b6 1e             	movzbl (%esi),%ebx
     ee0:	83 c6 01             	add    $0x1,%esi
     ee3:	84 db                	test   %bl,%bl
     ee5:	74 29                	je     f10 <printf+0x80>
    c = fmt[i] & 0xff;
     ee7:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
     eea:	85 d2                	test   %edx,%edx
     eec:	74 ca                	je     eb8 <printf+0x28>
      }
    } else if(state == '%'){
     eee:	83 fa 25             	cmp    $0x25,%edx
     ef1:	75 ea                	jne    edd <printf+0x4d>
      if(c == 'd'){
     ef3:	83 f8 25             	cmp    $0x25,%eax
     ef6:	0f 84 24 01 00 00    	je     1020 <printf+0x190>
     efc:	83 e8 63             	sub    $0x63,%eax
     eff:	83 f8 15             	cmp    $0x15,%eax
     f02:	77 1c                	ja     f20 <printf+0x90>
     f04:	ff 24 85 fc 12 00 00 	jmp    *0x12fc(,%eax,4)
     f0b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     f0f:	90                   	nop
        putc(fd, c);
      }
      state = 0;
    }
  }
}
     f10:	8d 65 f4             	lea    -0xc(%ebp),%esp
     f13:	5b                   	pop    %ebx
     f14:	5e                   	pop    %esi
     f15:	5f                   	pop    %edi
     f16:	5d                   	pop    %ebp
     f17:	c3                   	ret
     f18:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     f1f:	90                   	nop
  write(fd, &c, 1);
     f20:	83 ec 04             	sub    $0x4,%esp
     f23:	8d 55 e7             	lea    -0x19(%ebp),%edx
     f26:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
     f2a:	6a 01                	push   $0x1
     f2c:	52                   	push   %edx
     f2d:	89 55 d4             	mov    %edx,-0x2c(%ebp)
     f30:	57                   	push   %edi
     f31:	e8 1d fe ff ff       	call   d53 <write>
     f36:	83 c4 0c             	add    $0xc,%esp
     f39:	88 5d e7             	mov    %bl,-0x19(%ebp)
     f3c:	6a 01                	push   $0x1
     f3e:	8b 55 d4             	mov    -0x2c(%ebp),%edx
     f41:	52                   	push   %edx
     f42:	57                   	push   %edi
     f43:	e8 0b fe ff ff       	call   d53 <write>
        putc(fd, c);
     f48:	83 c4 10             	add    $0x10,%esp
      state = 0;
     f4b:	31 d2                	xor    %edx,%edx
     f4d:	eb 8e                	jmp    edd <printf+0x4d>
     f4f:	90                   	nop
        printint(fd, *ap, 16, 0);
     f50:	8b 5d d0             	mov    -0x30(%ebp),%ebx
     f53:	83 ec 0c             	sub    $0xc,%esp
     f56:	b9 10 00 00 00       	mov    $0x10,%ecx
     f5b:	8b 13                	mov    (%ebx),%edx
     f5d:	6a 00                	push   $0x0
     f5f:	89 f8                	mov    %edi,%eax
        ap++;
     f61:	83 c3 04             	add    $0x4,%ebx
        printint(fd, *ap, 16, 0);
     f64:	e8 87 fe ff ff       	call   df0 <printint>
        ap++;
     f69:	89 5d d0             	mov    %ebx,-0x30(%ebp)
     f6c:	83 c4 10             	add    $0x10,%esp
      state = 0;
     f6f:	31 d2                	xor    %edx,%edx
     f71:	e9 67 ff ff ff       	jmp    edd <printf+0x4d>
     f76:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     f7d:	8d 76 00             	lea    0x0(%esi),%esi
        s = (char*)*ap;
     f80:	8b 45 d0             	mov    -0x30(%ebp),%eax
     f83:	8b 18                	mov    (%eax),%ebx
        ap++;
     f85:	83 c0 04             	add    $0x4,%eax
     f88:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
     f8b:	85 db                	test   %ebx,%ebx
     f8d:	0f 84 9d 00 00 00    	je     1030 <printf+0x1a0>
        while(*s != 0){
     f93:	0f b6 03             	movzbl (%ebx),%eax
      state = 0;
     f96:	31 d2                	xor    %edx,%edx
        while(*s != 0){
     f98:	84 c0                	test   %al,%al
     f9a:	0f 84 3d ff ff ff    	je     edd <printf+0x4d>
     fa0:	8d 55 e7             	lea    -0x19(%ebp),%edx
     fa3:	89 75 d4             	mov    %esi,-0x2c(%ebp)
     fa6:	89 de                	mov    %ebx,%esi
     fa8:	89 d3                	mov    %edx,%ebx
     faa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  write(fd, &c, 1);
     fb0:	83 ec 04             	sub    $0x4,%esp
     fb3:	88 45 e7             	mov    %al,-0x19(%ebp)
          s++;
     fb6:	83 c6 01             	add    $0x1,%esi
  write(fd, &c, 1);
     fb9:	6a 01                	push   $0x1
     fbb:	53                   	push   %ebx
     fbc:	57                   	push   %edi
     fbd:	e8 91 fd ff ff       	call   d53 <write>
        while(*s != 0){
     fc2:	0f b6 06             	movzbl (%esi),%eax
     fc5:	83 c4 10             	add    $0x10,%esp
     fc8:	84 c0                	test   %al,%al
     fca:	75 e4                	jne    fb0 <printf+0x120>
      state = 0;
     fcc:	8b 75 d4             	mov    -0x2c(%ebp),%esi
     fcf:	31 d2                	xor    %edx,%edx
     fd1:	e9 07 ff ff ff       	jmp    edd <printf+0x4d>
     fd6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     fdd:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
     fe0:	8b 5d d0             	mov    -0x30(%ebp),%ebx
     fe3:	83 ec 0c             	sub    $0xc,%esp
     fe6:	b9 0a 00 00 00       	mov    $0xa,%ecx
     feb:	8b 13                	mov    (%ebx),%edx
     fed:	6a 01                	push   $0x1
     fef:	e9 6b ff ff ff       	jmp    f5f <printf+0xcf>
     ff4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, *ap);
     ff8:	8b 5d d0             	mov    -0x30(%ebp),%ebx
  write(fd, &c, 1);
     ffb:	83 ec 04             	sub    $0x4,%esp
     ffe:	8d 55 e7             	lea    -0x19(%ebp),%edx
        putc(fd, *ap);
    1001:	8b 03                	mov    (%ebx),%eax
        ap++;
    1003:	83 c3 04             	add    $0x4,%ebx
        putc(fd, *ap);
    1006:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    1009:	6a 01                	push   $0x1
    100b:	52                   	push   %edx
    100c:	57                   	push   %edi
    100d:	e8 41 fd ff ff       	call   d53 <write>
        ap++;
    1012:	89 5d d0             	mov    %ebx,-0x30(%ebp)
    1015:	83 c4 10             	add    $0x10,%esp
      state = 0;
    1018:	31 d2                	xor    %edx,%edx
    101a:	e9 be fe ff ff       	jmp    edd <printf+0x4d>
    101f:	90                   	nop
  write(fd, &c, 1);
    1020:	83 ec 04             	sub    $0x4,%esp
    1023:	88 5d e7             	mov    %bl,-0x19(%ebp)
    1026:	8d 55 e7             	lea    -0x19(%ebp),%edx
    1029:	6a 01                	push   $0x1
    102b:	e9 11 ff ff ff       	jmp    f41 <printf+0xb1>
    1030:	b8 28 00 00 00       	mov    $0x28,%eax
          s = "(null)";
    1035:	bb f4 12 00 00       	mov    $0x12f4,%ebx
    103a:	e9 61 ff ff ff       	jmp    fa0 <printf+0x110>
    103f:	90                   	nop

00001040 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    1040:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1041:	a1 84 19 00 00       	mov    0x1984,%eax
{
    1046:	89 e5                	mov    %esp,%ebp
    1048:	57                   	push   %edi
    1049:	56                   	push   %esi
    104a:	53                   	push   %ebx
    104b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
    104e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1051:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1058:	89 c2                	mov    %eax,%edx
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    105a:	8b 00                	mov    (%eax),%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    105c:	39 ca                	cmp    %ecx,%edx
    105e:	73 30                	jae    1090 <free+0x50>
    1060:	39 c1                	cmp    %eax,%ecx
    1062:	72 04                	jb     1068 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1064:	39 c2                	cmp    %eax,%edx
    1066:	72 f0                	jb     1058 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
    1068:	8b 73 fc             	mov    -0x4(%ebx),%esi
    106b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    106e:	39 f8                	cmp    %edi,%eax
    1070:	74 2e                	je     10a0 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
    1072:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    1075:	8b 42 04             	mov    0x4(%edx),%eax
    1078:	8d 34 c2             	lea    (%edx,%eax,8),%esi
    107b:	39 f1                	cmp    %esi,%ecx
    107d:	74 38                	je     10b7 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
    107f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
    1081:	5b                   	pop    %ebx
  freep = p;
    1082:	89 15 84 19 00 00    	mov    %edx,0x1984
}
    1088:	5e                   	pop    %esi
    1089:	5f                   	pop    %edi
    108a:	5d                   	pop    %ebp
    108b:	c3                   	ret
    108c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1090:	39 c1                	cmp    %eax,%ecx
    1092:	72 d0                	jb     1064 <free+0x24>
    1094:	eb c2                	jmp    1058 <free+0x18>
    1096:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    109d:	8d 76 00             	lea    0x0(%esi),%esi
    bp->s.size += p->s.ptr->s.size;
    10a0:	03 70 04             	add    0x4(%eax),%esi
    10a3:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    10a6:	8b 02                	mov    (%edx),%eax
    10a8:	8b 00                	mov    (%eax),%eax
    10aa:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
    10ad:	8b 42 04             	mov    0x4(%edx),%eax
    10b0:	8d 34 c2             	lea    (%edx,%eax,8),%esi
    10b3:	39 f1                	cmp    %esi,%ecx
    10b5:	75 c8                	jne    107f <free+0x3f>
    p->s.size += bp->s.size;
    10b7:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
    10ba:	89 15 84 19 00 00    	mov    %edx,0x1984
    p->s.size += bp->s.size;
    10c0:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
    10c3:	8b 4b f8             	mov    -0x8(%ebx),%ecx
    10c6:	89 0a                	mov    %ecx,(%edx)
}
    10c8:	5b                   	pop    %ebx
    10c9:	5e                   	pop    %esi
    10ca:	5f                   	pop    %edi
    10cb:	5d                   	pop    %ebp
    10cc:	c3                   	ret
    10cd:	8d 76 00             	lea    0x0(%esi),%esi

000010d0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    10d0:	55                   	push   %ebp
    10d1:	89 e5                	mov    %esp,%ebp
    10d3:	57                   	push   %edi
    10d4:	56                   	push   %esi
    10d5:	53                   	push   %ebx
    10d6:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    10d9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    10dc:	8b 15 84 19 00 00    	mov    0x1984,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    10e2:	8d 78 07             	lea    0x7(%eax),%edi
    10e5:	c1 ef 03             	shr    $0x3,%edi
    10e8:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
    10eb:	85 d2                	test   %edx,%edx
    10ed:	0f 84 8d 00 00 00    	je     1180 <malloc+0xb0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    10f3:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    10f5:	8b 48 04             	mov    0x4(%eax),%ecx
    10f8:	39 f9                	cmp    %edi,%ecx
    10fa:	73 64                	jae    1160 <malloc+0x90>
  if(nu < 4096)
    10fc:	bb 00 10 00 00       	mov    $0x1000,%ebx
    1101:	39 df                	cmp    %ebx,%edi
    1103:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
    1106:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
    110d:	eb 0a                	jmp    1119 <malloc+0x49>
    110f:	90                   	nop
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1110:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    1112:	8b 48 04             	mov    0x4(%eax),%ecx
    1115:	39 f9                	cmp    %edi,%ecx
    1117:	73 47                	jae    1160 <malloc+0x90>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    1119:	89 c2                	mov    %eax,%edx
    111b:	39 05 84 19 00 00    	cmp    %eax,0x1984
    1121:	75 ed                	jne    1110 <malloc+0x40>
  p = sbrk(nu * sizeof(Header));
    1123:	83 ec 0c             	sub    $0xc,%esp
    1126:	56                   	push   %esi
    1127:	e8 8f fc ff ff       	call   dbb <sbrk>
  if(p == (char*)-1)
    112c:	83 c4 10             	add    $0x10,%esp
    112f:	83 f8 ff             	cmp    $0xffffffff,%eax
    1132:	74 1c                	je     1150 <malloc+0x80>
  hp->s.size = nu;
    1134:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    1137:	83 ec 0c             	sub    $0xc,%esp
    113a:	83 c0 08             	add    $0x8,%eax
    113d:	50                   	push   %eax
    113e:	e8 fd fe ff ff       	call   1040 <free>
  return freep;
    1143:	8b 15 84 19 00 00    	mov    0x1984,%edx
      if((p = morecore(nunits)) == 0)
    1149:	83 c4 10             	add    $0x10,%esp
    114c:	85 d2                	test   %edx,%edx
    114e:	75 c0                	jne    1110 <malloc+0x40>
        return 0;
  }
}
    1150:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    1153:	31 c0                	xor    %eax,%eax
}
    1155:	5b                   	pop    %ebx
    1156:	5e                   	pop    %esi
    1157:	5f                   	pop    %edi
    1158:	5d                   	pop    %ebp
    1159:	c3                   	ret
    115a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
    1160:	39 cf                	cmp    %ecx,%edi
    1162:	74 4c                	je     11b0 <malloc+0xe0>
        p->s.size -= nunits;
    1164:	29 f9                	sub    %edi,%ecx
    1166:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
    1169:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
    116c:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
    116f:	89 15 84 19 00 00    	mov    %edx,0x1984
}
    1175:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    1178:	83 c0 08             	add    $0x8,%eax
}
    117b:	5b                   	pop    %ebx
    117c:	5e                   	pop    %esi
    117d:	5f                   	pop    %edi
    117e:	5d                   	pop    %ebp
    117f:	c3                   	ret
    base.s.ptr = freep = prevp = &base;
    1180:	c7 05 84 19 00 00 88 	movl   $0x1988,0x1984
    1187:	19 00 00 
    base.s.size = 0;
    118a:	b8 88 19 00 00       	mov    $0x1988,%eax
    base.s.ptr = freep = prevp = &base;
    118f:	c7 05 88 19 00 00 88 	movl   $0x1988,0x1988
    1196:	19 00 00 
    base.s.size = 0;
    1199:	c7 05 8c 19 00 00 00 	movl   $0x0,0x198c
    11a0:	00 00 00 
    if(p->s.size >= nunits){
    11a3:	e9 54 ff ff ff       	jmp    10fc <malloc+0x2c>
    11a8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    11af:	90                   	nop
        prevp->s.ptr = p->s.ptr;
    11b0:	8b 08                	mov    (%eax),%ecx
    11b2:	89 0a                	mov    %ecx,(%edx)
    11b4:	eb b9                	jmp    116f <malloc+0x9f>
