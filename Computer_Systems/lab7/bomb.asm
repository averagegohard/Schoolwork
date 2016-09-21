
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
  40058f:	49 c7 c0 80 09 40 00 	mov    $0x400980,%r8
  400596:	48 c7 c1 10 09 40 00 	mov    $0x400910,%rcx
  40059d:	48 c7 c7 80 08 40 00 	mov    $0x400880,%rdi
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
  400689:	bf a0 09 40 00       	mov    $0x4009a0,%edi
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
  40075a:	48 83 ec 10          	sub    $0x10,%rsp
  40075e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  400762:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  400766:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40076a:	48 8d 48 04          	lea    0x4(%rax),%rcx
  40076e:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  400772:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400776:	be a7 09 40 00       	mov    $0x4009a7,%esi
  40077b:	48 89 c7             	mov    %rax,%rdi
  40077e:	b8 00 00 00 00       	mov    $0x0,%eax
  400783:	e8 d8 fd ff ff       	callq  400560 <__isoc99_sscanf@plt>
  400788:	c9                   	leaveq 
  400789:	c3                   	retq   

000000000040078a <read_three_numbers>:
  40078a:	55                   	push   %rbp
  40078b:	48 89 e5             	mov    %rsp,%rbp
  40078e:	48 83 ec 10          	sub    $0x10,%rsp
  400792:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  400796:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  40079a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40079e:	48 8d 70 08          	lea    0x8(%rax),%rsi
  4007a2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4007a6:	48 8d 48 04          	lea    0x4(%rax),%rcx
  4007aa:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  4007ae:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4007b2:	49 89 f0             	mov    %rsi,%r8
  4007b5:	be ad 09 40 00       	mov    $0x4009ad,%esi
  4007ba:	48 89 c7             	mov    %rax,%rdi
  4007bd:	b8 00 00 00 00       	mov    $0x0,%eax
  4007c2:	e8 99 fd ff ff       	callq  400560 <__isoc99_sscanf@plt>
  4007c7:	c9                   	leaveq 
  4007c8:	c3                   	retq   

00000000004007c9 <phase1>:
  4007c9:	55                   	push   %rbp
  4007ca:	48 89 e5             	mov    %rsp,%rbp
  4007cd:	48 83 ec 10          	sub    $0x10,%rsp
  4007d1:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4007d5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4007d9:	be b6 09 40 00       	mov    $0x4009b6,%esi
  4007de:	48 89 c7             	mov    %rax,%rdi
  4007e1:	e8 e5 fe ff ff       	callq  4006cb <compare_str>
  4007e6:	85 c0                	test   %eax,%eax
  4007e8:	75 0a                	jne    4007f4 <phase1+0x2b>
  4007ea:	b8 00 00 00 00       	mov    $0x0,%eax
  4007ef:	e8 91 fe ff ff       	callq  400685 <explode_bomb>
  4007f4:	c9                   	leaveq 
  4007f5:	c3                   	retq   

00000000004007f6 <phase2>:
  4007f6:	55                   	push   %rbp
  4007f7:	48 89 e5             	mov    %rsp,%rbp
  4007fa:	48 83 ec 20          	sub    $0x20,%rsp
  4007fe:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  400802:	48 8d 55 f0          	lea    -0x10(%rbp),%rdx
  400806:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40080a:	48 89 d6             	mov    %rdx,%rsi
  40080d:	48 89 c7             	mov    %rax,%rdi
  400810:	e8 41 ff ff ff       	callq  400756 <read_two_numbers>
  400815:	8b 55 f0             	mov    -0x10(%rbp),%edx
  400818:	8b 45 f4             	mov    -0xc(%rbp),%eax
  40081b:	39 c2                	cmp    %eax,%edx
  40081d:	7d 0a                	jge    400829 <phase2+0x33>
  40081f:	b8 00 00 00 00       	mov    $0x0,%eax
  400824:	e8 5c fe ff ff       	callq  400685 <explode_bomb>
  400829:	c9                   	leaveq 
  40082a:	c3                   	retq   

000000000040082b <phase3>:
  40082b:	55                   	push   %rbp
  40082c:	48 89 e5             	mov    %rsp,%rbp
  40082f:	48 83 ec 20          	sub    $0x20,%rsp
  400833:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  400837:	48 8d 55 f0          	lea    -0x10(%rbp),%rdx
  40083b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40083f:	48 89 d6             	mov    %rdx,%rsi
  400842:	48 89 c7             	mov    %rax,%rdi
  400845:	e8 40 ff ff ff       	callq  40078a <read_three_numbers>
  40084a:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  400851:	eb 24                	jmp    400877 <phase3+0x4c>
  400853:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400856:	48 98                	cltq   
  400858:	8b 4c 85 f0          	mov    -0x10(%rbp,%rax,4),%ecx
  40085c:	8b 55 fc             	mov    -0x4(%rbp),%edx
  40085f:	89 d0                	mov    %edx,%eax
  400861:	01 c0                	add    %eax,%eax
  400863:	01 d0                	add    %edx,%eax
  400865:	39 c1                	cmp    %eax,%ecx
  400867:	74 0a                	je     400873 <phase3+0x48>
  400869:	b8 00 00 00 00       	mov    $0x0,%eax
  40086e:	e8 12 fe ff ff       	callq  400685 <explode_bomb>
  400873:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  400877:	83 7d fc 02          	cmpl   $0x2,-0x4(%rbp)
  40087b:	7e d6                	jle    400853 <phase3+0x28>
  40087d:	c9                   	leaveq 
  40087e:	c3                   	retq   
  40087f:	90                   	nop

0000000000400880 <main>:
  400880:	55                   	push   %rbp
  400881:	48 89 e5             	mov    %rsp,%rbp
  400884:	48 83 ec 10          	sub    $0x10,%rsp
  400888:	bf c2 09 40 00       	mov    $0x4009c2,%edi
  40088d:	b8 00 00 00 00       	mov    $0x0,%eax
  400892:	e8 89 fc ff ff       	callq  400520 <printf@plt>
  400897:	b8 00 00 00 00       	mov    $0x0,%eax
  40089c:	e8 cf fd ff ff       	callq  400670 <read_line>
  4008a1:	48 98                	cltq   
  4008a3:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4008a7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4008ab:	48 89 c7             	mov    %rax,%rdi
  4008ae:	b8 00 00 00 00       	mov    $0x0,%eax
  4008b3:	e8 11 ff ff ff       	callq  4007c9 <phase1>
  4008b8:	bf cc 09 40 00       	mov    $0x4009cc,%edi
  4008bd:	e8 4e fc ff ff       	callq  400510 <puts@plt>
  4008c2:	bf dc 09 40 00       	mov    $0x4009dc,%edi
  4008c7:	b8 00 00 00 00       	mov    $0x0,%eax
  4008cc:	e8 4f fc ff ff       	callq  400520 <printf@plt>
  4008d1:	b8 00 00 00 00       	mov    $0x0,%eax
  4008d6:	e8 95 fd ff ff       	callq  400670 <read_line>
  4008db:	48 98                	cltq   
  4008dd:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4008e1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4008e5:	48 89 c7             	mov    %rax,%rdi
  4008e8:	b8 00 00 00 00       	mov    $0x0,%eax
  4008ed:	e8 04 ff ff ff       	callq  4007f6 <phase2>
  4008f2:	bf e6 09 40 00       	mov    $0x4009e6,%edi
  4008f7:	e8 14 fc ff ff       	callq  400510 <puts@plt>
  4008fc:	bf f6 09 40 00       	mov    $0x4009f6,%edi
  400901:	e8 0a fc ff ff       	callq  400510 <puts@plt>
  400906:	b8 00 00 00 00       	mov    $0x0,%eax
  40090b:	c9                   	leaveq 
  40090c:	c3                   	retq   
  40090d:	0f 1f 00             	nopl   (%rax)

0000000000400910 <__libc_csu_init>:
  400910:	41 57                	push   %r15
  400912:	41 89 ff             	mov    %edi,%r15d
  400915:	41 56                	push   %r14
  400917:	49 89 f6             	mov    %rsi,%r14
  40091a:	41 55                	push   %r13
  40091c:	49 89 d5             	mov    %rdx,%r13
  40091f:	41 54                	push   %r12
  400921:	4c 8d 25 e8 04 20 00 	lea    0x2004e8(%rip),%r12        # 600e10 <__frame_dummy_init_array_entry>
  400928:	55                   	push   %rbp
  400929:	48 8d 2d e8 04 20 00 	lea    0x2004e8(%rip),%rbp        # 600e18 <__init_array_end>
  400930:	53                   	push   %rbx
  400931:	4c 29 e5             	sub    %r12,%rbp
  400934:	31 db                	xor    %ebx,%ebx
  400936:	48 c1 fd 03          	sar    $0x3,%rbp
  40093a:	48 83 ec 08          	sub    $0x8,%rsp
  40093e:	e8 9d fb ff ff       	callq  4004e0 <_init>
  400943:	48 85 ed             	test   %rbp,%rbp
  400946:	74 1e                	je     400966 <__libc_csu_init+0x56>
  400948:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40094f:	00 
  400950:	4c 89 ea             	mov    %r13,%rdx
  400953:	4c 89 f6             	mov    %r14,%rsi
  400956:	44 89 ff             	mov    %r15d,%edi
  400959:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40095d:	48 83 c3 01          	add    $0x1,%rbx
  400961:	48 39 eb             	cmp    %rbp,%rbx
  400964:	75 ea                	jne    400950 <__libc_csu_init+0x40>
  400966:	48 83 c4 08          	add    $0x8,%rsp
  40096a:	5b                   	pop    %rbx
  40096b:	5d                   	pop    %rbp
  40096c:	41 5c                	pop    %r12
  40096e:	41 5d                	pop    %r13
  400970:	41 5e                	pop    %r14
  400972:	41 5f                	pop    %r15
  400974:	c3                   	retq   
  400975:	66 66 2e 0f 1f 84 00 	data32 nopw %cs:0x0(%rax,%rax,1)
  40097c:	00 00 00 00 

0000000000400980 <__libc_csu_fini>:
  400980:	f3 c3                	repz retq 
  400982:	66 90                	xchg   %ax,%ax

Disassembly of section .fini:

0000000000400984 <_fini>:
  400984:	48 83 ec 08          	sub    $0x8,%rsp
  400988:	48 83 c4 08          	add    $0x8,%rsp
  40098c:	c3                   	retq   
