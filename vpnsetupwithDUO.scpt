FasdUAS 1.101.10   ��   ��    k             l     ��  ��    � � 1. Create a new generic password entry in Keychain Access called "WHATEVER_AnyConnect_VPN" (the name in Keychain access must match that in line 39 below) with your password for the Cisco AnyConnect VPN server.       � 	 	�   1 .   C r e a t e   a   n e w   g e n e r i c   p a s s w o r d   e n t r y   i n   K e y c h a i n   A c c e s s   c a l l e d   " W H A T E V E R _ A n y C o n n e c t _ V P N "   ( t h e   n a m e   i n   K e y c h a i n   a c c e s s   m u s t   m a t c h   t h a t   i n   l i n e   3 9   b e l o w )   w i t h   y o u r   p a s s w o r d   f o r   t h e   C i s c o   A n y C o n n e c t   V P N   s e r v e r .       
  
 l     ��  ��    � � 2. Open this script in Script Editor (both this and the above are in the Applications->Utilities folder) and "Save as.." an Application (.app) with desired name.     �  D   2 .   O p e n   t h i s   s c r i p t   i n   S c r i p t   E d i t o r   ( b o t h   t h i s   a n d   t h e   a b o v e   a r e   i n   t h e   A p p l i c a t i o n s - > U t i l i t i e s   f o l d e r )   a n d   " S a v e   a s . . "   a n   A p p l i c a t i o n   ( . a p p )   w i t h   d e s i r e d   n a m e .      l     ��  ��    S M 3. Open Security & Privacy System Preferences, go to Privacy, Accessibility.     �   �   3 .   O p e n   S e c u r i t y   &   P r i v a c y   S y s t e m   P r e f e r e n c e s ,   g o   t o   P r i v a c y ,   A c c e s s i b i l i t y .      l     ��  ��    > 8 4. Enable the above .app so it can access Accessibility     �   p   4 .   E n a b l e   t h e   a b o v e   . a p p   s o   i t   c a n   a c c e s s   A c c e s s i b i l i t y      l     ��  ��    r l 5. Copy and paste a nice icon on the generic Applescript icon (I used a copy of the default AnyConnect one)     �   �   5 .   C o p y   a n d   p a s t e   a   n i c e   i c o n   o n   t h e   g e n e r i c   A p p l e s c r i p t   i c o n   ( I   u s e d   a   c o p y   o f   t h e   d e f a u l t   A n y C o n n e c t   o n e )      l     ��   !��     _ Y 6. Add the new .app to /Users/[yourshortname]/Applications with a shortcut to your Dock     ! � " " �   6 .   A d d   t h e   n e w   . a p p   t o   / U s e r s / [ y o u r s h o r t n a m e ] / A p p l i c a t i o n s   w i t h   a   s h o r t c u t   t o   y o u r   D o c k     # $ # l     �� % &��   % � � 7. Enjoy the fast connection with no need to enter password and increased security of not having a sensitive password stored as plain text    & � ' '   7 .   E n j o y   t h e   f a s t   c o n n e c t i o n   w i t h   n o   n e e d   t o   e n t e r   p a s s w o r d   a n d   i n c r e a s e d   s e c u r i t y   o f   n o t   h a v i n g   a   s e n s i t i v e   p a s s w o r d   s t o r e d   a s   p l a i n   t e x t $  ( ) ( l     �� * +��   * . ( 8. Run script again to close connection    + � , , P   8 .   R u n   s c r i p t   a g a i n   t o   c l o s e   c o n n e c t i o n )  - . - l     ��������  ��  ��   .  / 0 / l     �� 1 2��   1 - ' AnyConnect now refered to as targetApp    2 � 3 3 N   A n y C o n n e c t   n o w   r e f e r e d   t o   a s   t a r g e t A p p 0  4 5 4 l     6���� 6 r      7 8 7 m      9 9 � : : N C i s c o   A n y C o n n e c t   S e c u r e   M o b i l i t y   C l i e n t 8 o      ���� 0 	targetapp 	targetApp��  ��   5  ; < ; l     ��������  ��  ��   <  = > = l     �� ? @��   ? 3 - Determine if AnyConnect is currently running    @ � A A Z   D e t e r m i n e   i f   A n y C o n n e c t   i s   c u r r e n t l y   r u n n i n g >  B C B l    D���� D O     E F E r     G H G I   �� I��
�� .coredoexnull���     **** I 4    �� J
�� 
prcs J o   
 ���� 0 	targetapp 	targetApp��   H o      ���� 0 processexists processExists F m     K K�                                                                                  sevs  alis    T  Untitled                       BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    U n t i t l e d  -System/Library/CoreServices/System Events.app   / ��  ��  ��   C  L M L l     ��������  ��  ��   M  N O N l     �� P Q��   P N H Close connection if running; else start connection and fill in password    Q � R R �   C l o s e   c o n n e c t i o n   i f   r u n n i n g ;   e l s e   s t a r t   c o n n e c t i o n   a n d   f i l l   i n   p a s s w o r d O  S�� S l   � T���� T Z    � U V�� W U =    X Y X o    ���� 0 processexists processExists Y m    ��
�� boovtrue V O    ' Z [ Z I  ! &������
�� .aevtquitnull��� ��� null��  ��   [ 4    �� \
�� 
capp \ o    ���� 0 	targetapp 	targetApp��   W k   * � ] ]  ^ _ ^ O   * 7 ` a ` I  1 6������
�� .miscactvnull��� ��� null��  ��   a 4   * .�� b
�� 
capp b o   , -���� 0 	targetapp 	targetApp _  c d c l  8 8��������  ��  ��   d  e�� e O   8 � f g f k   < � h h  i j i l  < <�� k l��   k 1 + Wait for first window to open. Do nothing.    l � m m V   W a i t   f o r   f i r s t   w i n d o w   t o   o p e n .   D o   n o t h i n g . j  n o n W   < V p q p I  L Q�� r��
�� .sysodelanull��� ��� nmbr r m   L M���� ��   q l  @ K s���� s I  @ K�� t��
�� .coredoexnull���     **** t n   @ G u v u 4   D G�� w
�� 
cwin w m   E F����  v 4   @ D�� x
�� 
prcs x o   B C���� 0 	targetapp 	targetApp��  ��  ��   o  y z y l  W W��������  ��  ��   z  { | { l  W W�� } ~��   } { u		You may need to uncomment below if your OpenConnect implementation requires a keystroke to accept the default VPN		    ~ �   � 	 	 Y o u   m a y   n e e d   t o   u n c o m m e n t   b e l o w   i f   y o u r   O p e n C o n n e c t   i m p l e m e n t a t i o n   r e q u i r e s   a   k e y s t r o k e   t o   a c c e p t   t h e   d e f a u l t   V P N 	 	 |  � � � O   W d � � � I  ^ c�� ���
�� .prcskprsnull���     ctxt � o   ^ _��
�� 
ret ��   � 4   W [�� �
�� 
prcs � o   Y Z���� 0 	targetapp 	targetApp �  � � � l  e e��������  ��  ��   �  � � � l  e e�� � ���   � h b Wait for second window to open and then automatically enter password extracted from your Keychain    � � � � �   W a i t   f o r   s e c o n d   w i n d o w   t o   o p e n   a n d   t h e n   a u t o m a t i c a l l y   e n t e r   p a s s w o r d   e x t r a c t e d   f r o m   y o u r   K e y c h a i n �  � � � W   e  � � � I  u z�� ���
�� .sysodelanull��� ��� nmbr � m   u v���� ��   � l  i t ����� � I  i t�� ���
�� .coredoexnull���     **** � n   i p � � � 4   m p�� �
�� 
cwin � m   n o����  � 4   i m�� �
�� 
prcs � o   k l���� 0 	targetapp 	targetApp��  ��  ��   �  � � � O   � � � � � k   � � � �  � � � l  � ��� � ���   � � � This is where the the password in the Keychain is accessed for use as input rather than being hardcoded as plain text in other versions of this script out in the wild     � � � �P   T h i s   i s   w h e r e   t h e   t h e   p a s s w o r d   i n   t h e   K e y c h a i n   i s   a c c e s s e d   f o r   u s e   a s   i n p u t   r a t h e r   t h a n   b e i n g   h a r d c o d e d   a s   p l a i n   t e x t   i n   o t h e r   v e r s i o n s   o f   t h i s   s c r i p t   o u t   i n   t h e   w i l d   �  � � � I  � ��� ���
�� .sysodelanull��� ��� nmbr � m   � ����� ��   �  � � � I  � ��� ���
�� .prcskprsnull���     ctxt � c   � � � � � m   � � � � � � �  h a p a t e l 2 � m   � ���
�� 
ctxt��   �  � � � I  � ��� ���
�� .prcskprsnull���     ctxt � 1   � ���
�� 
tab ��   �  � � � r   � � � � � m   � � � � � � �  c i s c o _ v p n � o      ���� 0 instring inString �  � � � r   � � � � � I  � ��� ���
�� .sysoexecTEXT���     TEXT � b   � � � � � m   � � � � � � � X / u s r / b i n / s e c u r i t y   f i n d - g e n e r i c - p a s s w o r d   - w l   � n   � � � � � 1   � ���
�� 
strq � o   � ����� 0 instring inString��   � o      ���� 0 pswd PSWD �  � � � I  � ��� ���
�� .prcskprsnull���     ctxt � c   � � � � � o   � ����� 0 pswd PSWD � m   � ���
�� 
ctxt��   �  ��� � I  � ��� ���
�� .prcskprsnull���     ctxt � o   � ���
�� 
ret ��  ��   � 4   � ��� �
�� 
prcs � o   � ����� 0 	targetapp 	targetApp �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � � � Autoclick on "Accept" of AnyConnect Banner window. If you have no welcome banner that needs acceptance, comment out these lines to the first "end tell" below    � � � �<   A u t o c l i c k   o n   " A c c e p t "   o f   A n y C o n n e c t   B a n n e r   w i n d o w .   I f   y o u   h a v e   n o   w e l c o m e   b a n n e r   t h a t   n e e d s   a c c e p t a n c e ,   c o m m e n t   o u t   t h e s e   l i n e s   t o   t h e   f i r s t   " e n d   t e l l "   b e l o w �  � � � W   � � � � � I  � ��� ���
�� .sysodelanull��� ��� nmbr � m   � ����� ��   � l  � � ����� � I  � ��� ���
�� .coredoexnull���     **** � n   � � � � � 4   � ��� �
�� 
cwin � m   � � � � � � � 2 C i s c o   A n y C o n n e c t   -   B a n n e r � 4   � ��� �
�� 
prcs � o   � ����� 0 	targetapp 	targetApp��  ��  ��   �  � � � O   � � � � � I  � ��� ��
�� .prcskprsnull���     ctxt � o   � ��~
�~ 
ret �   � 4   � ��} �
�} 
prcs � o   � ��|�| 0 	targetapp 	targetApp �  ��{ � l  � ��z�y�x�z  �y  �x  �{   g m   8 9 � ��                                                                                  sevs  alis    T  Untitled                       BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    U n t i t l e d  -System/Library/CoreServices/System Events.app   / ��  ��  ��  ��  ��       
�w � � 9�v � ��u�t�s�w   � �r�q�p�o�n�m�l�k
�r .aevtoappnull  �   � ****�q 0 	targetapp 	targetApp�p 0 processexists processExists�o 0 instring inString�n 0 pswd PSWD�m  �l  �k   � �j ��i�h � ��g
�j .aevtoappnull  �   � **** � k     � � �  4 � �  B � �  S�f�f  �i  �h   �   �  9�e K�d�c�b�a�`�_�^�]�\�[�Z ��Y�X ��W ��V�U�T ��e 0 	targetapp 	targetApp
�d 
prcs
�c .coredoexnull���     ****�b 0 processexists processExists
�a 
capp
�` .aevtquitnull��� ��� null
�_ .miscactvnull��� ��� null
�^ 
cwin
�] .sysodelanull��� ��� nmbr
�\ 
ret 
�[ .prcskprsnull���     ctxt�Z 
�Y 
ctxt
�X 
tab �W 0 instring inString
�V 
strq
�U .sysoexecTEXT���     TEXT�T 0 pswd PSWD�g ��E�O� *��/j E�UO�e  *��/ *j UY �*��/ *j UO� � h*��/�k/j kj 
[OY��O*��/ �j UO h*��/�l/j lj 
[OY��O*��/ C�j 
O��&j O_ j Oa E` Oa _ a ,%j E` O_ �&j O�j UO h*��/�a /j lj 
[OY��O*��/ �j UOPU
�v boovfals � � � � $ G o d k n o w $ 2 5 1 2 ! # $ % ^ &�u  �t  �s   ascr  ��ޭ