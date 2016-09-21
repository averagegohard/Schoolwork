
bomb:     file format elf64-x86-64


Disassembly of section .init:

00000000004004e0 <_init>:
  4004e0:	48 83 ec 08          	sub    $0x8,%rsp
  4004e4:	48 8b 05 0d 0b 20 00 	mov    0x200b0d(%rip),%rax        # 600ff8 <_DYNAMIC+0x1d0>
  4004eb:	48 85 c0             	test   %rax,%rax
  4004ee:	74 05                	je     4004f5 <_init+0x15>
  4004f0:	e8 4b 00 00 00       	callq  400540 <__gmon_start__@plt>
  4004f5:	48 83 c4 08          	add    $0x8,%rsp
  4004f9:	c3                   	retq   

Disassembly of section .plt:

0000000000400500 <puts@plt-0x10>:
  400500:	ff 35 02 0b 20 00    	pushq  0x200b02(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400506:	ff 25 04 0b 20 00    	jmpq   *0x200b04(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40050c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400510 <puts@plt>:
  400510:	ff 25 02 0b 20 00    	jmpq   *0x200b02(%rip)        # 601018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400516:	68 00 00 00 00       	pushq  $0x0
  40051b:	e9 e0 ff ff ff       	jmpq   400500 <_init+0x20>

0000000000400520 <printf@plt>:
  400520:	ff 25 fa 0a 20 00    	jmpq   *0x200afa(%rip)        # 601020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400526:	68 01 00 00 00       	pushq  $0x1
  40052b:	e9 d0 ff ff ff       	jmpq   400500 <_init+0x20>

0000000000400530 <__libc_start_main@plt>:
  400530:	ff 25 f2 0a 20 00    	jmpq   *0x200af2(%rip)        # 601028 <_GLOBAL_OFFSET_TABLE_+0x28>
  400536:	68 02 00 00 00       	pushq  $0x2
  40053b:	e9 c0 ff ff ff       	jmpq   400500 <_init+0x20>

0000000000400540 <__gmon_start__@plt>:
  400540:	ff 25 ea 0a 20 00    	jmpq   *0x200aea(%rip)        # 601030 <_GLOBAL_OFFSET_TABLE_+0x30>
  400546:	68 03 00 00 00       	pushq  $0x3
  40054b:	e9 b0 ff ff ff       	jmpq   400500 <_init+0x20>

0000000000400550 <gets@plt>:
  400550:	ff 25 e2 0a 20 00    	jmpq   *0x200ae2(%rip)        # 601038 <_GLOBAL_OFFSET_TABLE_+0x38>
  400556:	68 04 00 00 00       	pushq  $0x4
  40055b:	e9 a0 ff ff ff       	jmpq   400500 <_init+0x20>

0000000000400560 <__isoc99_sscanf@plt>:
  400560:	ff 25 da 0a 20 00    	jmpq   *0x200ada(%rip)        # 601040 <_GLOBAL_OFFSET_TABLE_+0x40>
  400566:	68 05 00 00 00       	pushq  $0x5
  40056b:	e9 90 ff ff ff       	jmpq   400500 <_init+0x20>

0000000000400570 <exit@plt>:
  400570:	ff 25 d2 0a 20 00    	jmpq   *0x200ad2(%rip)        # 601048 <_GLOBAL_OFFSET_TABLE_+0x48>
  400576:	68 06 00 00 00       	pushq  $0x6
  40057b:	e9 80 ff ff ff       	jmpq   400500 <_init+0x20>

Disassembly of section .text:

0000000000400580 <_start>:
  400580:	31 ed                	xor    %ebp,%ebp
  400582:	49 89 d1             	mov    %rdx,%r9
  400585:	5e                   	pop    %rsi
  400586:	48 89 e2             	mov    %rsp,%rdx
  400589:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40058d:	50                   	push   %rax
  40058e:	54                   	push   %rsp
  40058f:	49 c7 c0 80 0a 40 00 	mov    $0x400a80,%r8
  400596:	48 c7 c1 10 0a 40 00 	mov    $0x400a10,%rcx
  40059d:	48 c7 c7 3c 09 40 00 	mov    $0x40093c,%rdi
  4005a4:	e8 87 ff ff ff       	callq  400530 <__libc_start_main@plt>
  4005a9:	f4                   	hlt    
  4005aa:	66 90                	xchg   %ax,%ax
  4005ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004005b0 <deregister_tm_clones>:
  4005b0:	b8 5f 10 60 00       	mov    $0x60105f,%eax
  4005b5:	55                   	push   %rbp
  4005b6:	48 2d 58 10 60 00    	sub    $0x601058,%rax
  4005bc:	48 83 f8 0e          	cmp    $0xe,%rax
  4005c0:	48 89 e5             	mov    %rsp,%rbp
  4005c3:	77 02                	ja     4005c7 <deregister_tm_clones+0x17>
  4005c5:	5d                   	pop    %rbp
  4005c6:	c3                   	retq   
  4005c7:	b8 00 00 00 00       	mov    $0x0,%eax
  4005cc:	48 85 c0             	test   %rax,%rax
  4005cf:	74 f4                	je     4005c5 <deregister_tm_clones+0x15>
  4005d1:	5d                   	pop    %rbp
  4005d2:	bf 58 10 60 00       	mov    $0x601058,%edi
  4005d7:	ff e0                	jmpq   *%rax
  4005d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004005e0 <register_tm_clones>:
  4005e0:	b8 58 10 60 00       	mov    $0x601058,%eax
  4005e5:	55                   	push   %rbp
  4005e6:	48 2d 58 10 60 00    	sub    $0x601058,%rax
  4005ec:	48 c1 f8 03          	sar    $0x3,%rax
  4005f0:	48 89 e5             	mov    %rsp,%rbp
  4005f3:	48 89 c2             	mov    %rax,%rdx
  4005f6:	48 c1 ea 3f          	shr    $0x3f,%rdx
  4005fa:	48 01 d0             	add    %rdx,%rax
  4005fd:	48 d1 f8             	sar    %rax
  400600:	75 02                	jne    400604 <register_tm_clones+0x24>
  400602:	5d                   	pop    %rbp
  400603:	c3                   	retq   
  400604:	ba 00 00 00 00       	mov    $0x0,%edx
  400609:	48 85 d2             	test   %rdx,%rdx
  40060c:	74 f4                	je     400602 <register_tm_clones+0x22>
  40060e:	5d                   	pop    %rbp
  40060f:	48 89 c6             	mov    %rax,%rsi
  400612:	bf 58 10 60 00       	mov    $0x601058,%edi
  400617:	ff e2                	jmpq   *%rdx
  400619:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400620 <__do_global_dtors_aux>:
  400620:	80 3d 39 0a 20 00 00 	cmpb   $0x0,0x200a39(%rip)        # 601060 <completed.6337>
  400627:	75 11                	jne    40063a <__do_global_dtors_aux+0x1a>
  400629:	55                   	push   %rbp
  40062a:	48 89 e5             	mov    %rsp,%rbp
  40062d:	e8 7e ff ff ff       	callq  4005b0 <deregister_tm_clones>
  400632:	5d                   	pop    %rbp
  400633:	c6 05 26 0a 20 00 01 	movb   $0x1,0x200a26(%rip)        # 601060 <completed.6337>
  40063a:	f3 c3                	repz retq 
  40063c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400640 <frame_dummy>:
  400640:	48 83 3d d8 07 20 00 	cmpq   $0x0,0x2007d8(%rip)        # 600e20 <__JCR_END__>
  400647:	00 
  400648:	74 1e                	je     400668 <frame_dummy+0x28>
  40064a:	b8 00 00 00 00       	mov    $0x0,%eax
  40064f:	48 85 c0             	test   %rax,%rax
  400652:	74 14                	je     400668 <frame_dummy+0x28>
  400654:	55                   	push   %rbp
  400655:	bf 20 0e 60 00       	mov    $0x600e20,%edi
  40065a:	48 89 e5             	mov    %rsp,%rbp
  40065d:	ff d0                	callq  *%rax
  40065f:	5d                   	pop    %rbp
  400660:	e9 7b ff ff ff       	jmpq   4005e0 <register_tm_clones>
  400665:	0f 1f 00             	nopl   (%rax)
  400668:	e9 73 ff ff ff       	jmpq   4005e0 <register_tm_clones>
  40066d:	0f 1f 00             	nopl   (%rax)

0000000000400670 <read_line>:
  400670:	55                   	push   %rbp
  400671:	48 89 e5             	mov    %rsp,%rbp
  400674:	bf 80 10 60 00       	mov    $0x601080,%edi
  400679:	e8 d2 fe ff ff       	callq  400550 <gets@plt>
  40067e:	b8 80 10 60 00       	mov    $0x601080,%eax
  400683:	5d                   	pop    %rbp
  400684:	c3                   	retq   

0000000000400685 <explode_bomb>:
  400685:	55                   	push   %rbp
  400686:	48 89 e5             	mov    %rsp,%rbp
  400689:	bf a0 0a 40 00       	mov    $0x400aa0,%edi
  40068e:	e8 7d fe ff ff       	callq  400510 <puts@plt>
  400693:	bf 00 00 00 00       	mov    $0x0,%edi
  400698:	e8 d3 fe ff ff       	callq  400570 <exit@plt>

000000000040069d <string_length>:
  40069d:	55                   	push   %rbp
  40069e:	48 89 e5             	mov    %rsp,%rbp
  4006a1:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  4006a5:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  4006ac:	eb 04                	jmp    4006b2 <string_length+0x15>
  4006ae:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  4006b2:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4006b5:	48 63 d0             	movslq %eax,%rdx
  4006b8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4006bc:	48 01 d0             	add    %rdx,%rax
  4006bf:	0f b6 00             	movzbl (%rax),%eax
  4006c2:	84 c0                	test   %al,%al
  4006c4:	75 e8                	jne    4006ae <string_length+0x11>
  4006c6:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4006c9:	5d                   	pop    %rbp
  4006ca:	c3                   	retq   

00000000004006cb <compare_str>:
  4006cb:	55                   	push   %rbp
  4006cc:	48 89 e5             	mov    %rsp,%rbp
  4006cf:	48 83 ec 20          	sub    $0x20,%rsp
  4006d3:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  4006d7:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  4006db:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
  4006e2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4006e6:	48 89 c7             	mov    %rax,%rdi
  4006e9:	e8 af ff ff ff       	callq  40069d <string_length>
  4006ee:	89 45 f4             	mov    %eax,-0xc(%rbp)
  4006f1:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4006f5:	48 89 c7             	mov    %rax,%rdi
  4006f8:	e8 a0 ff ff ff       	callq  40069d <string_length>
  4006fd:	89 45 f0             	mov    %eax,-0x10(%rbp)
  400700:	8b 45 f4             	mov    -0xc(%rbp),%eax
  400703:	3b 45 f0             	cmp    -0x10(%rbp),%eax
  400706:	74 07                	je     40070f <compare_str+0x44>
  400708:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  40070f:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
  400716:	eb 31                	jmp    400749 <compare_str+0x7e>
  400718:	8b 45 f8             	mov    -0x8(%rbp),%eax
  40071b:	48 63 d0             	movslq %eax,%rdx
  40071e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400722:	48 01 d0             	add    %rdx,%rax
  400725:	0f b6 10             	movzbl (%rax),%edx
  400728:	8b 45 f8             	mov    -0x8(%rbp),%eax
  40072b:	48 63 c8             	movslq %eax,%rcx
  40072e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  400732:	48 01 c8             	add    %rcx,%rax
  400735:	0f b6 00             	movzbl (%rax),%eax
  400738:	38 c2                	cmp    %al,%dl
  40073a:	74 09                	je     400745 <compare_str+0x7a>
  40073c:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  400743:	eb 0c                	jmp    400751 <compare_str+0x86>
  400745:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
  400749:	8b 45 f8             	mov    -0x8(%rbp),%eax
  40074c:	3b 45 f4             	cmp    -0xc(%rbp),%eax
  40074f:	7c c7                	jl     400718 <compare_str+0x4d>
  400751:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400754:	c9                   	leaveq 
  400755:	c3                   	retq   

0000000000400756 <read_two_numbers>:
  400756:	55                   	push   %rbp
  400757:	48 89 e5             	mov    %rsp,%rbp
  40075a:	48 83 ec 20          	sub    $0x20,%rsp
  40075e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  400762:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  400766:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  40076a:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
  40076e:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  400772:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  400776:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  40077a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40077e:	48 89 c7             	mov    %rax,%rdi
  400781:	b8 00 00 00 00       	mov    $0x0,%eax
  400786:	e8 d5 fd ff ff       	callq  400560 <__isoc99_sscanf@plt>
  40078b:	c9                   	leaveq 
  40078c:	c3                   	retq   

000000000040078d <read_three_numbers>:
  40078d:	55                   	push   %rbp
  40078e:	48 89 e5             	mov    %rsp,%rbp
  400791:	48 83 ec 30          	sub    $0x30,%rsp
  400795:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  400799:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  40079d:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  4007a1:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
  4007a5:	4c 89 45 d8          	mov    %r8,-0x28(%rbp)
  4007a9:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
  4007ad:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  4007b1:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  4007b5:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  4007b9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4007bd:	49 89 f8             	mov    %rdi,%r8
  4007c0:	48 89 c7             	mov    %rax,%rdi
  4007c3:	b8 00 00 00 00       	mov    $0x0,%eax
  4007c8:	e8 93 fd ff ff       	callq  400560 <__isoc99_sscanf@plt>
  4007cd:	c9                   	leaveq 
  4007ce:	c3                   	retq   

00000000004007cf <phase_1>:
  4007cf:	55                   	push   %rbp
  4007d0:	48 89 e5             	mov    %rsp,%rbp
  4007d3:	48 83 ec 10          	sub    $0x10,%rsp
  4007d7:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4007db:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4007df:	be a8 0a 40 00       	mov    $0x400aa8,%esi
  4007e4:	48 89 c7             	mov    %rax,%rdi
  4007e7:	e8 df fe ff ff       	callq  4006cb <compare_str>
  4007ec:	85 c0                	test   %eax,%eax
  4007ee:	75 0a                	jne    4007fa <phase_1+0x2b>
  4007f0:	b8 00 00 00 00       	mov    $0x0,%eax
  4007f5:	e8 8b fe ff ff       	callq  400685 <explode_bomb>
  4007fa:	c9                   	leaveq 
  4007fb:	c3                   	retq   

00000000004007fc <phase_2>:
  4007fc:	55                   	push   %rbp
  4007fd:	48 89 e5             	mov    %rsp,%rbp
  400800:	48 83 ec 30          	sub    $0x30,%rsp
  400804:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  400808:	48 c7 45 f8 c9 0a 40 	movq   $0x400ac9,-0x8(%rbp)
  40080f:	00 
  400810:	48 8d 7d e8          	lea    -0x18(%rbp),%rdi
  400814:	48 8d 4d ec          	lea    -0x14(%rbp),%rcx
  400818:	48 8d 55 f0          	lea    -0x10(%rbp),%rdx
  40081c:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  400820:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  400824:	49 89 f8             	mov    %rdi,%r8
  400827:	48 89 c7             	mov    %rax,%rdi
  40082a:	e8 5e ff ff ff       	callq  40078d <read_three_numbers>
  40082f:	89 45 f4             	mov    %eax,-0xc(%rbp)
  400832:	83 7d f4 02          	cmpl   $0x2,-0xc(%rbp)
  400836:	7f 0a                	jg     400842 <phase_2+0x46>
  400838:	b8 00 00 00 00       	mov    $0x0,%eax
  40083d:	e8 43 fe ff ff       	callq  400685 <explode_bomb>
  400842:	8b 55 f0             	mov    -0x10(%rbp),%edx
  400845:	89 d0                	mov    %edx,%eax
  400847:	01 c0                	add    %eax,%eax
  400849:	01 c2                	add    %eax,%edx
  40084b:	8b 45 ec             	mov    -0x14(%rbp),%eax
  40084e:	39 c2                	cmp    %eax,%edx
  400850:	74 0a                	je     40085c <phase_2+0x60>
  400852:	b8 00 00 00 00       	mov    $0x0,%eax
  400857:	e8 29 fe ff ff       	callq  400685 <explode_bomb>
  40085c:	8b 55 ec             	mov    -0x14(%rbp),%edx
  40085f:	89 d0                	mov    %edx,%eax
  400861:	01 c0                	add    %eax,%eax
  400863:	01 c2                	add    %eax,%edx
  400865:	8b 45 e8             	mov    -0x18(%rbp),%eax
  400868:	39 c2                	cmp    %eax,%edx
  40086a:	74 0a                	je     400876 <phase_2+0x7a>
  40086c:	b8 00 00 00 00       	mov    $0x0,%eax
  400871:	e8 0f fe ff ff       	callq  400685 <explode_bomb>
  400876:	c9                   	leaveq 
  400877:	c3                   	retq   

0000000000400878 <phase_3>:
  400878:	55                   	push   %rbp
  400879:	48 89 e5             	mov    %rsp,%rbp
  40087c:	48 83 ec 30          	sub    $0x30,%rsp
  400880:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  400884:	48 c7 45 f8 d2 0a 40 	movq   $0x400ad2,-0x8(%rbp)
  40088b:	00 
  40088c:	48 8d 4d ec          	lea    -0x14(%rbp),%rcx
  400890:	48 8d 55 f0          	lea    -0x10(%rbp),%rdx
  400894:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  400898:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40089c:	48 89 c7             	mov    %rax,%rdi
  40089f:	e8 b2 fe ff ff       	callq  400756 <read_two_numbers>
  4008a4:	89 45 f4             	mov    %eax,-0xc(%rbp)
  4008a7:	83 7d f4 01          	cmpl   $0x1,-0xc(%rbp)
  4008ab:	7f 0a                	jg     4008b7 <phase_3+0x3f>
  4008ad:	b8 00 00 00 00       	mov    $0x0,%eax
  4008b2:	e8 ce fd ff ff       	callq  400685 <explode_bomb>
  4008b7:	8b 45 f0             	mov    -0x10(%rbp),%eax
  4008ba:	83 f8 01             	cmp    $0x1,%eax
  4008bd:	74 2d                	je     4008ec <phase_3+0x74>
  4008bf:	83 f8 01             	cmp    $0x1,%eax
  4008c2:	7f 06                	jg     4008ca <phase_3+0x52>
  4008c4:	85 c0                	test   %eax,%eax
  4008c6:	74 0e                	je     4008d6 <phase_3+0x5e>
  4008c8:	eb 66                	jmp    400930 <phase_3+0xb8>
  4008ca:	83 f8 02             	cmp    $0x2,%eax
  4008cd:	74 35                	je     400904 <phase_3+0x8c>
  4008cf:	83 f8 03             	cmp    $0x3,%eax
  4008d2:	74 46                	je     40091a <phase_3+0xa2>
  4008d4:	eb 5a                	jmp    400930 <phase_3+0xb8>
  4008d6:	8b 45 ec             	mov    -0x14(%rbp),%eax
  4008d9:	83 f8 0c             	cmp    $0xc,%eax
  4008dc:	74 0c                	je     4008ea <phase_3+0x72>
  4008de:	b8 00 00 00 00       	mov    $0x0,%eax
  4008e3:	e8 9d fd ff ff       	callq  400685 <explode_bomb>
  4008e8:	eb 50                	jmp    40093a <phase_3+0xc2>
  4008ea:	eb 4e                	jmp    40093a <phase_3+0xc2>
  4008ec:	8b 45 ec             	mov    -0x14(%rbp),%eax
  4008ef:	3d fe 00 00 00       	cmp    $0xfe,%eax
  4008f4:	74 0c                	je     400902 <phase_3+0x8a>
  4008f6:	b8 00 00 00 00       	mov    $0x0,%eax
  4008fb:	e8 85 fd ff ff       	callq  400685 <explode_bomb>
  400900:	eb 38                	jmp    40093a <phase_3+0xc2>
  400902:	eb 36                	jmp    40093a <phase_3+0xc2>
  400904:	8b 45 ec             	mov    -0x14(%rbp),%eax
  400907:	83 f8 62             	cmp    $0x62,%eax
  40090a:	74 0c                	je     400918 <phase_3+0xa0>
  40090c:	b8 00 00 00 00       	mov    $0x0,%eax
  400911:	e8 6f fd ff ff       	callq  400685 <explode_bomb>
  400916:	eb 22                	jmp    40093a <phase_3+0xc2>
  400918:	eb 20                	jmp    40093a <phase_3+0xc2>
  40091a:	8b 45 ec             	mov    -0x14(%rbp),%eax
  40091d:	83 f8 38             	cmp    $0x38,%eax
  400920:	74 0c                	je     40092e <phase_3+0xb6>
  400922:	b8 00 00 00 00       	mov    $0x0,%eax
  400927:	e8 59 fd ff ff       	callq  400685 <explode_bomb>
  40092c:	eb 0c                	jmp    40093a <phase_3+0xc2>
  40092e:	eb 0a                	jmp    40093a <phase_3+0xc2>
  400930:	b8 00 00 00 00       	mov    $0x0,%eax
  400935:	e8 4b fd ff ff       	callq  400685 <explode_bomb>
  40093a:	c9                   	leaveq 
  40093b:	c3                   	retq   

000000000040093c <main>:
  40093c:	55                   	push   %rbp
  40093d:	48 89 e5             	mov    %rsp,%rbp
  400940:	48 83 ec 10          	sub    $0x10,%rsp
  400944:	bf d8 0a 40 00       	mov    $0x400ad8,%edi
  400949:	b8 00 00 00 00       	mov    $0x0,%eax
  40094e:	e8 cd fb ff ff       	callq  400520 <printf@plt>
  400953:	b8 00 00 00 00       	mov    $0x0,%eax
  400958:	e8 13 fd ff ff       	callq  400670 <read_line>
  40095d:	48 98                	cltq   
  40095f:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  400963:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400967:	48 89 c7             	mov    %rax,%rdi
  40096a:	b8 00 00 00 00       	mov    $0x0,%eax
  40096f:	e8 5b fe ff ff       	callq  4007cf <phase_1>
  400974:	bf e2 0a 40 00       	mov    $0x400ae2,%edi
  400979:	e8 92 fb ff ff       	callq  400510 <puts@plt>
  40097e:	bf f2 0a 40 00       	mov    $0x400af2,%edi
  400983:	b8 00 00 00 00       	mov    $0x0,%eax
  400988:	e8 93 fb ff ff       	callq  400520 <printf@plt>
  40098d:	b8 00 00 00 00       	mov    $0x0,%eax
  400992:	e8 d9 fc ff ff       	callq  400670 <read_line>
  400997:	48 98                	cltq   
  400999:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40099d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4009a1:	48 89 c7             	mov    %rax,%rdi
  4009a4:	b8 00 00 00 00       	mov    $0x0,%eax
  4009a9:	e8 4e fe ff ff       	callq  4007fc <phase_2>
  4009ae:	bf fc 0a 40 00       	mov    $0x400afc,%edi
  4009b3:	e8 58 fb ff ff       	callq  400510 <puts@plt>
  4009b8:	bf 0c 0b 40 00       	mov    $0x400b0c,%edi
  4009bd:	b8 00 00 00 00       	mov    $0x0,%eax
  4009c2:	e8 59 fb ff ff       	callq  400520 <printf@plt>
  4009c7:	b8 00 00 00 00       	mov    $0x0,%eax
  4009cc:	e8 9f fc ff ff       	callq  400670 <read_line>
  4009d1:	48 98                	cltq   
  4009d3:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4009d7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4009db:	48 89 c7             	mov    %rax,%rdi
  4009de:	b8 00 00 00 00       	mov    $0x0,%eax
  4009e3:	e8 90 fe ff ff       	callq  400878 <phase_3>
  4009e8:	bf 16 0b 40 00       	mov    $0x400b16,%edi
  4009ed:	e8 1e fb ff ff       	callq  400510 <puts@plt>
  4009f2:	bf 26 0b 40 00       	mov    $0x400b26,%edi
  4009f7:	e8 14 fb ff ff       	callq  400510 <puts@plt>
  4009fc:	b8 00 00 00 00       	mov    $0x0,%eax
  400a01:	c9                   	leaveq 
  400a02:	c3                   	retq   
  400a03:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400a0a:	00 00 00 
  400a0d:	0f 1f 00             	nopl   (%rax)

0000000000400a10 <__libc_csu_init>:
  400a10:	41 57                	push   %r15
  400a12:	41 89 ff             	mov    %edi,%r15d
  400a15:	41 56                	push   %r14
  400a17:	49 89 f6             	mov    %rsi,%r14
  400a1a:	41 55                	push   %r13
  400a1c:	49 89 d5             	mov    %rdx,%r13
  400a1f:	41 54                	push   %r12
  400a21:	4c 8d 25 e8 03 20 00 	lea    0x2003e8(%rip),%r12        # 600e10 <__frame_dummy_init_array_entry>
  400a28:	55                   	push   %rbp
  400a29:	48 8d 2d e8 03 20 00 	lea    0x2003e8(%rip),%rbp        # 600e18 <__init_array_end>
  400a30:	53                   	push   %rbx
  400a31:	4c 29 e5             	sub    %r12,%rbp
  400a34:	31 db                	xor    %ebx,%ebx
  400a36:	48 c1 fd 03          	sar    $0x3,%rbp
  400a3a:	48 83 ec 08          	sub    $0x8,%rsp
  400a3e:	e8 9d fa ff ff       	callq  4004e0 <_init>
  400a43:	48 85 ed             	test   %rbp,%rbp
  400a46:	74 1e                	je     400a66 <__libc_csu_init+0x56>
  400a48:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400a4f:	00 
  400a50:	4c 89 ea             	mov    %r13,%rdx
  400a53:	4c 89 f6             	mov    %r14,%rsi
  400a56:	44 89 ff             	mov    %r15d,%edi
  400a59:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400a5d:	48 83 c3 01          	add    $0x1,%rbx
  400a61:	48 39 eb             	cmp    %rbp,%rbx
  400a64:	75 ea                	jne    400a50 <__libc_csu_init+0x40>
  400a66:	48 83 c4 08          	add    $0x8,%rsp
  400a6a:	5b                   	pop    %rbx
  400a6b:	5d                   	pop    %rbp
  400a6c:	41 5c                	pop    %r12
  400a6e:	41 5d                	pop    %r13
  400a70:	41 5e                	pop    %r14
  400a72:	41 5f                	pop    %r15
  400a74:	c3                   	retq   
  400a75:	66 66 2e 0f 1f 84 00 	data32 nopw %cs:0x0(%rax,%rax,1)
  400a7c:	00 00 00 00 

0000000000400a80 <__libc_csu_fini>:
  400a80:	f3 c3                	repz retq 
  400a82:	66 90                	xchg   %ax,%ax

Disassembly of section .fini:

0000000000400a84 <_fini>:
  400a84:	48 83 ec 08          	sub    $0x8,%rsp
  400a88:	48 83 c4 08          	add    $0x8,%rsp
  400a8c:	c3                   	retq   
