FasdUAS 1.101.10   ��   ��    k             l      ��  ��    ` Z
	TEMPLATES.SCPT
	By Chris Sauve of [pxldot](http://pxldot.com).
	See README for details.
     � 	 	 � 
 	 T E M P L A T E S . S C P T 
 	 B y   C h r i s   S a u v e   o f   [ p x l d o t ] ( h t t p : / / p x l d o t . c o m ) . 
 	 S e e   R E A D M E   f o r   d e t a i l s . 
   
  
 l     ��������  ��  ��        l          j     �� �� (0 startorendoffolder startOrEndOfFolder  m        �   
 s t a r t  O I change to "end" to put the new project at the end of the selected folder     �   �   c h a n g e   t o   " e n d "   t o   p u t   t h e   n e w   p r o j e c t   a t   t h e   e n d   o f   t h e   s e l e c t e d   f o l d e r      l          j    �� ��  0 variablesymbol variableSymbol  m       �    $  E ? change to whatever delimiter you want to denote your variables     �   ~   c h a n g e   t o   w h a t e v e r   d e l i m i t e r   y o u   w a n t   t o   d e n o t e   y o u r   v a r i a b l e s      l        ! "   j    �� #�� ,0 defaultfolderpointer defaultFolderPointer # m     $ $ � % %  > > > ! O I change to whatever delimtier you want to denote a default folder pointer    " � & & �   c h a n g e   t o   w h a t e v e r   d e l i m t i e r   y o u   w a n t   t o   d e n o t e   a   d e f a u l t   f o l d e r   p o i n t e r   ' ( ' l      ) * + ) j   	 �� ,�� 40 optionliststartdelimiter optionListStartDelimiter , m   	 
 - - � . .  { * = 7 start of a list of options for the preceeding variable    + � / / n   s t a r t   o f   a   l i s t   o f   o p t i o n s   f o r   t h e   p r e c e e d i n g   v a r i a b l e (  0 1 0 l      2 3 4 2 j    �� 5�� 00 optionlistenddelimiter optionListEndDelimiter 5 m     6 6 � 7 7  } 3 ; 5 end of a list of options for the preceeding variable    4 � 8 8 j   e n d   o f   a   l i s t   o f   o p t i o n s   f o r   t h e   p r e c e e d i n g   v a r i a b l e 1  9 : 9 j    �� ;�� .0 defaulttemplatefolder defaultTemplateFolder ; m     < < � = =  T e m p l a t e :  > ? > j    �� @�� 0 usegrowl useGrowl @ m    ��
�� boovtrue ?  A B A j    �� C�� "0 specialskipdays specialSkipDays C J    ����   B  D E D l     ��������  ��  ��   E  F G F l      H I J H j    �� K�� 0 
dateformat 
dateFormat K m     L L � M M  M M M M   D ,   Y Y Y Y I Z T sets the format that dates will be displayed in when shown as text (i.e., in notes)    J � N N �   s e t s   t h e   f o r m a t   t h a t   d a t e s   w i l l   b e   d i s p l a y e d   i n   w h e n   s h o w n   a s   t e x t   ( i . e . ,   i n   n o t e s ) G  O P O l      �� Q R��   Q��
Use the following, in addition to any extra text, to create a custom date format (make sure to keep the simple quotes):

YEAR: "YYYY" - year with four digits (i.e., 2013), or "YY" - year with two digits (i.e., 13)
MONTH: "MMMM" - Month as text (i.e., June), "MMM" Month as text truncated to three letters (i.e., Jun), "MM" - Month with two digits using zero as padding (i.e., 06), or "M" - Month with no padding (i.e., 6)
DAY: "DD" - Day with two digits using zero as padding (i.e., 09), or "D" = Day without padding (i.e., 9)
WEEKDAY: "W" - Weekday as text (i.e., Monday)

# EXAMPLES (AS AT MONDAY, JUNE 17, 2013)

"YY-MM-DD" => "13-06-17"
"MMMM the D, YY" => "June the 17, 13"
"D/M/YYYY" => "17/6/2013"
    R � S S� 
 U s e   t h e   f o l l o w i n g ,   i n   a d d i t i o n   t o   a n y   e x t r a   t e x t ,   t o   c r e a t e   a   c u s t o m   d a t e   f o r m a t   ( m a k e   s u r e   t o   k e e p   t h e   s i m p l e   q u o t e s ) : 
 
 Y E A R :   " Y Y Y Y "   -   y e a r   w i t h   f o u r   d i g i t s   ( i . e . ,   2 0 1 3 ) ,   o r   " Y Y "   -   y e a r   w i t h   t w o   d i g i t s   ( i . e . ,   1 3 ) 
 M O N T H :   " M M M M "   -   M o n t h   a s   t e x t   ( i . e . ,   J u n e ) ,   " M M M "   M o n t h   a s   t e x t   t r u n c a t e d   t o   t h r e e   l e t t e r s   ( i . e . ,   J u n ) ,   " M M "   -   M o n t h   w i t h   t w o   d i g i t s   u s i n g   z e r o   a s   p a d d i n g   ( i . e . ,   0 6 ) ,   o r   " M "   -   M o n t h   w i t h   n o   p a d d i n g   ( i . e . ,   6 ) 
 D A Y :   " D D "   -   D a y   w i t h   t w o   d i g i t s   u s i n g   z e r o   a s   p a d d i n g   ( i . e . ,   0 9 ) ,   o r   " D "   =   D a y   w i t h o u t   p a d d i n g   ( i . e . ,   9 ) 
 W E E K D A Y :   " W "   -   W e e k d a y   a s   t e x t   ( i . e . ,   M o n d a y ) 
 
 #   E X A M P L E S   ( A S   A T   M O N D A Y ,   J U N E   1 7 ,   2 0 1 3 ) 
 
 " Y Y - M M - D D "   = >   " 1 3 - 0 6 - 1 7 " 
 " M M M M   t h e   D ,   Y Y "   = >   " J u n e   t h e   1 7 ,   1 3 " 
 " D / M / Y Y Y Y "   = >   " 1 7 / 6 / 2 0 1 3 " 
 P  T U T l     ��������  ��  ��   U  V W V l     �� X Y��   X   Don't change these    Y � Z Z &   D o n ' t   c h a n g e   t h e s e W  [ \ [ j    �� ]�� 0 firstrun firstRun ] m    ��
�� boovtrue \  ^ _ ^ j    #�� `�� .0 specialtemplatefolder specialTemplateFolder ` m    "��
�� 
null _  a b a l     ��������  ��  ��   b  c d c l     �� e f��   e 1 + Growl variables, don't change these either    f � g g V   G r o w l   v a r i a b l e s ,   d o n ' t   c h a n g e   t h e s e   e i t h e r d  h i h j   $ (�� j�� "0 applicationname applicationName j m   $ ' k k � l l  T e m p l a t e s . s c p t i  m n m j   ) -�� o�� &0 scriptstartnotify scriptStartNotify o m   ) , p p � q q  S c r i p t   S t a r t e d n  r s r j   . 2�� t�� "0 scriptendnotify scriptEndNotify t m   . 1 u u � v v  S c r i p t   E n d e d s  w x w j   3 7�� y�� 0 
datenotify 
dateNotify y m   3 6 z z � { {  D a t e   M i s m a t c h x  | } | j   8 >�� ~�� $0 allnotifications allNotifications ~ J   8 =    � � � o   8 9���� &0 scriptstartnotify scriptStartNotify �  � � � o   9 :���� "0 scriptendnotify scriptEndNotify �  ��� � o   : ;���� 0 
datenotify 
dateNotify��   }  � � � j   ? C�� ��� ,0 defaultnotifications defaultNotifications � o   ? @���� $0 allnotifications allNotifications �  � � � j   D J�� ��� "0 iconapplication iconApplication � m   D G � � � � �  O m n i F o c u s . a p p �  � � � l     ��������  ��  ��   �  � � � j   K Q�� ��� &0 checkingsomething checkingSomething � m   K N � � � � �   �  � � � l     ��������  ��  ��   �  � � � l   	z ����� � O    	z � � � O   	y � � � k   
	x � �  � � � Z   
 � � ����� � o   
 ���� 0 firstrun firstRun � k    � � �  � � � r     � � � n    � � � I    �������� .0 checkforothertemplate checkForOtherTemplate��  ��   �  f     � o      ���� :0 othertemplatescriptprojects otherTemplateScriptProjects �  � � � Z   & � ����� � =    � � � o    ���� :0 othertemplatescriptprojects otherTemplateScriptProjects � m    ������ � L     "����  ��  ��   �  � � � Z   ' T � ����� � >  ' , � � � n   ' * � � � 1   ( *��
�� 
leng � o   ' (���� :0 othertemplatescriptprojects otherTemplateScriptProjects � m   * +����   � k   / P � �  � � � r   / ? � � � n   / = � � � 1   ; =��
�� 
bhit � l  / ; ����� � I  / ;�� � �
�� .sysodlogaskr        TEXT � m   / 0 � � � � �N I t   a p p e a r s   t h a t   y o u   h a v e   s o m e   p r o j e c t s   u s i n g   C u r t   C l i f t o n ' s   O m n i F o c u s   t e m p l a t e   s c r i p t   s y n t a x .   W o u l d   y o u   l i k e   t o   a u t o m a t i c a l l y   a d j u s t   t h e s e   t o   u s e   t h i s   s c r i p t ' s   s y n t a x ? � �� � �
�� 
btns � J   1 5 � �  � � � m   1 2 � � � � �  N o ,   T h a n k s �  ��� � m   2 3 � � � � � $ Y e s ,   C h a n g e   S y n t a x��   � �� ���
�� 
dflt � m   6 7���� ��  ��  ��   � o      ���� (0 changeoldtemplates changeOldTemplates �  ��� � Z  @ P � ����� � =  @ C � � � o   @ A���� (0 changeoldtemplates changeOldTemplates � m   A B � � � � � $ Y e s ,   C h a n g e   S y n t a x � n  F L � � � I   G L�� ����� 20 adjustoldtemplatesyntax adjustOldTemplateSyntax �  ��� � o   G H���� :0 othertemplatescriptprojects otherTemplateScriptProjects��  ��   �  f   F G��  ��  ��  ��  ��   �  � � � l  U U��������  ��  ��   �  � � � Q   U � � � � � r   X o � � � n   X i � � � 1   e i��
�� 
ttxt � l  X e ����� � I  X e�� � �
�� .sysodlogaskr        TEXT � m   X [ � � � � � � W h a t   s y m b o l   w o u l d   y o u   l i k e   t o   u s e   t o   d e s i g n a t e   v a r i a b l e   n a m e s   i n   y o u r   t e m p l a t e s ? � �� ���
�� 
dtxt � m   ^ a � � � � �  $��  ��  ��   � o      ����  0 variablesymbol variableSymbol � R      �� � �
�� .ascrerr ****      � **** � o      ���� 0 	errortext 	errorText � �� ���
�� 
errn � o      ���� 0 errornumber errorNumber��   � Z   w � � ����� � =  w | � � � o   w x���� 0 errornumber errorNumber � m   x {������ � L    �����  ��  ��   �  � � � l  � ���������  ��  ��   �  ��� � r   � � � � � m   � ���
�� boovfals � o      ���� 0 firstrun firstRun��  ��  ��   �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � l  � � ����� � I  � ��� ���
�� .corecnte****       **** � l  � � ����  6 � � 2   � ���
�� 
FCff l  � ����� E   � � n  � � 1   � ���
�� 
pnam  g   � � o   � ����� .0 defaulttemplatefolder defaultTemplateFolder��  ��  ��  ��  ��  ��  ��   � o      �� 0 thecount theCount � 	 Z   ��
�~
 l  � ��}�| =  � � l  � ��{�z I  � ��y�x
�y .corecnte****       **** l  � ��w�v 6 � � 2   � ��u
�u 
FCff l  � ��t�s E   � � n  � � 1   � ��r
�r 
pnam  g   � � o   � ��q�q .0 defaulttemplatefolder defaultTemplateFolder�t  �s  �w  �v  �x  �{  �z   m   � ��p�p  �}  �|   k   ��  r   � � 6 � �  2   � ��o
�o 
FCff  F   � �!"! l  � �#�n�m# =  � �$%$ n  � �&'& 1   � ��l
�l 
FCHi'  g   � �% m   � ��k
�k boovfals�n  �m  " l  � �(�j�i( H   � �)) E   � �*+* n  � �,-, 1   � ��h
�h 
pnam-  g   � �+ m   � �.. �//  ! e x c l u d e�j  �i   o      �g�g (0 templatefolderlist templateFolderList 010 r   � �232 J   � ��f�f  3 o      �e�e 00 templatefoldernamelist templateFolderNameList1 454 X   �R6�d76 k  M88 9:9 r  ;<; m  == �>>  < o      �c�c 0 nextlistitem nextListItem: ?@? Z 6AB�b�aA = (CDC l $E�`�_E n  $FGF m   $�^
�^ 
pclsG n  HIH 1   �]
�] 
ctnrI o  �\�\ 0 	thefolder 	theFolder�`  �_  D m  $'�[
�[ 
FCArB r  +2JKJ m  +.LL �MM !�  K o      �Z�Z 0 nextlistitem nextListItem�b  �a  @ NON r  7DPQP b  7@RSR o  7:�Y�Y 0 nextlistitem nextListItemS l :?T�X�WT n  :?UVU 1  ;?�V
�V 
pnamV o  :;�U�U 0 	thefolder 	theFolder�X  �W  Q o      �T�T 0 nextlistitem nextListItemO W�SW r  EMXYX o  EH�R�R 0 nextlistitem nextListItemY l     Z�Q�PZ n      [\[  ;  KL\ o  HK�O�O 00 templatefoldernamelist templateFolderNameList�Q  �P  �S  �d 0 	thefolder 	theFolder7 o   �N�N (0 templatefolderlist templateFolderList5 ]^] r  Sr_`_ I Sn�Mab
�M .gtqpchltns    @   @ ns  a o  SV�L�L 00 templatefoldernamelist templateFolderNameListb �Kcd
�K 
apprc m  Y\ee �ff , C h o o s e   T e m p l a t e   F o l d e rd �Jgh
�J 
prmpg m  _bii �jj � N o   o b v i o u s   t e m p l a t e   f o l d e r s   w e r e   f o u n d .   P l e a s e   s e l e c t   t h e   f o l d e r   i n   w h i c h   y o u   s t o r e   t e m p l a t e s .h �Ik�H
�I 
okbtk m  ehll �mm , S e t   a s   T e m p l a t e   F o l d e r�H  ` o      �G�G 00 selectedtemplatefolder selectedTemplateFolder^ non Z s�pq�F�Ep = sxrsr o  sv�D�D 00 selectedtemplatefolder selectedTemplateFolders m  vw�C
�C boovfalsq L  {}�B�B  �F  �E  o tut r  ��vwv n ��xyx I  ���Az�@�A (0 selectionpositions selectionPositionsz {|{ o  ���?�? 00 selectedtemplatefolder selectedTemplateFolder| }~} o  ���>�> 00 templatefoldernamelist templateFolderNameList~ �= m  ���<
�< boovfals�=  �@  y  f  ��w o      �;�; 00 templatefolderposition templateFolderPositionu ��:� r  ����� n  ����� 4  ���9�
�9 
cobj� o  ���8�8 00 templatefolderposition templateFolderPosition� o  ���7�7 (0 templatefolderlist templateFolderList� o      �6�6 .0 specialtemplatefolder specialTemplateFolder�:  �~   r  ����� m  ���5
�5 
null� o      �4�4 .0 specialtemplatefolder specialTemplateFolder	 ��� l ���3�2�1�3  �2  �1  � ��� Z  �M���0�� = ����� o  ���/�/ .0 specialtemplatefolder specialTemplateFolder� m  ���.
�. 
null� r  ���� 6���� 2  ���-
�- 
FCfx� F  � ��� F  ����� F  ����� l ����,�+� = ����� n  ����� 1  ���*
�* 
pnam� n ����� m  ���)
�) 
FCAr�  g  ��� o  ���(�( .0 defaulttemplatefolder defaultTemplateFolder�,  �+  � l ����'�&� > ����� n ����� 1  ���%
�% 
FCPs�  g  ��� m  ���$
�$ FCPsFCPD�'  �&  � l ����#�"� > ����� n ����� 1  ���!
�! 
FCPs�  g  ��� m  ��� 
�  FCPsFCPd�#  �"  � l ������ H  ���� E  ����� n ����� 1  ���
� 
pnam�  g  ��� m  ���� ���  ! e x c l u d e�  �  � o      �� 0 projectlist projectList�0  � r  M��� 6I��� 2  �
� 
FCfx� F  H��� F  :��� F  -��� l  ���� =  ��� n ��� m  �
� 
FCAr�  g  � o  �� .0 specialtemplatefolder specialTemplateFolder�  �  � l !,���� > !,��� n "&��� 1  "&�
� 
FCPs�  g  ""� m  '+�
� FCPsFCPD�  �  � l .9���� > .9��� n /3��� 1  /3�
� 
FCPs�  g  //� m  48�
� FCPsFCPd�  �  � l ;G���� H  ;G�� E  ;F��� n <@��� 1  <@�
� 
pnam�  g  <<� m  AE�� ���  ! e x c l u d e�  �  � o      �� 0 projectlist projectList� ��� r  NT��� J  NP�
�
  � o      �	�	 "0 projectnamelist projectNameList� ��� X  Uz���� r  ku��� l kp���� n  kp��� 1  lp�
� 
pnam� o  kl�� 0 
theproject 
theProject�  �  � l     ���� n      ���  ;  st� o  ps�� "0 projectnamelist projectNameList�  �  � 0 
theproject 
theProject� o  X[� �  0 projectlist projectList� ��� Z  {�������� = {���� n  {���� 1  ~���
�� 
leng� o  {~���� "0 projectnamelist projectNameList� m  ������  � k  ���� ��� I �������
�� .sysodisAaleR        TEXT� m  ���� ��� N o   p r o j e c t s   i n   a   " T e m p l a t e "   f o l d e r   w e r e   f o u n d .   M a k e   s u r e   t h a t   t h e   f o l d e r   n a m e   c o n t a i n s   t h e   w o r d   " T e m p l a t e "   s o   t h a t   i t   c a n   b e   f o u n d .��  � ���� L  ������  ��  ��  ��  � ��� l ����������  ��  ��  � ��� r  ����� m  ���� ��� 2 S e l e c t   a   T e m p l a t e   P r o j e c t� o      ���� "0 chooselisttitle chooseListTitle� ��� r  ����� m  ��   � � W h i c h   o n e   o f   y o u r   t e m p l a t e   p r o j e c t s   w o u l d   y o u   l i k e   t o   m a k e   a   n e w   i n s t a n c e   o f ?� o      ����  0 chooselisttext chooseListText�  r  �� m  �� � & S e l e c t   T h i s   P r o j e c t o      ���� 0 chooselistok chooseListOK 	 r  ��

 I ����
�� .gtqpchltns    @   @ ns   o  ������ "0 projectnamelist projectNameList ��
�� 
appr o  ������ "0 chooselisttitle chooseListTitle ��
�� 
prmp o  ������  0 chooselisttext chooseListText ����
�� 
okbt o  ������ 0 chooselistok chooseListOK��   o      ���� "0 selectedproject selectedProject	  Z ������ = �� o  ������ "0 selectedproject selectedProject m  ����
�� boovfals L  ������  ��  ��    r  �� n �� I  �������� (0 selectionpositions selectionPositions  !  o  ������ "0 selectedproject selectedProject! "#" o  ������ "0 projectnamelist projectNameList# $��$ m  ����
�� boovfals��  ��    f  �� o      ���� "0 projectposition projectPosition %&% r  ��'(' n  ��)*) 4  ����+
�� 
cobj+ o  ������ "0 projectposition projectPosition* o  ������ 0 projectlist projectList( o      ���� 20 selectedprojecttemplate selectedProjectTemplate& ,-, l ����������  ��  ��  - ./. r  � 010 m  ����
�� boovfals1 o      ���� (0 defaultfolderfound defaultFolderFound/ 232 Z  �45����4 E  676 l 8����8 n  9:9 1  ��
�� 
FCno: o  ���� 20 selectedprojecttemplate selectedProjectTemplate��  ��  7 o  ���� ,0 defaultfolderpointer defaultFolderPointer5 k  };; <=< r  >?> m  ���� ? o      ���� "0 parawithpointer paraWithPointer= @A@ Y  RB��CDEB Z /MFG����F l /AH����H C  /AIJI n  /;KLK 4  6;��M
�� 
cparM o  9:���� 0 i  L l /6N����N n  /6OPO 1  26��
�� 
FCnoP o  /2���� 20 selectedprojecttemplate selectedProjectTemplate��  ��  J o  ;@���� ,0 defaultfolderpointer defaultFolderPointer��  ��  G r  DIQRQ o  DE���� 0 i  R o      ���� "0 parawithpointer paraWithPointer��  ��  �� 0 i  C l )S����S I )��T��
�� .corecnte****       ****T n %UVU 2 !%��
�� 
cparV l !W����W n  !XYX 1  !��
�� 
FCnoY o  ���� 20 selectedprojecttemplate selectedProjectTemplate��  ��  ��  ��  ��  D m  )*���� E m  *+������A Z[Z r  Se\]\ n  Sa^_^ 4  Za��`
�� 
cpar` o  ]`���� "0 parawithpointer paraWithPointer_ l SZa����a n  SZbcb 1  VZ��
�� 
FCnoc o  SV���� 20 selectedprojecttemplate selectedProjectTemplate��  ��  ] o      ���� 0 folderpointer folderPointer[ ded r  f�fgf J  f|hh iji m  fikk �ll  > > >  j mnm m  iloo �pp  > > >n qrq m  loss �tt    >  r uvu m  orww �xx    >v yzy m  ru{{ �||  >  z }��} m  ux~~ �  >��  g n     ��� 1  }���
�� 
txdl�  f  |}e ��� r  ����� n  ����� 2  ����
�� 
citm� o  ������ 0 folderpointer folderPointer� o      ���� 0 newfoldertext newFolderText� ��� r  ����� m  ���� ���  � n     ��� 1  ����
�� 
txdl�  f  ��� ��� r  ����� J  ������  � o      ���� &0 cleanedfoldertext cleanedFolderText� ��� Y  ���������� Z  ��������� > ����� n  ����� 4  �����
�� 
cobj� o  ������ 0 i  � o  ������ 0 newfoldertext newFolderText� m  ���� ���  � r  ����� l �������� n  ����� 4  �����
�� 
cpar� m  ������ � l �������� c  ����� n  ����� 4  �����
�� 
cobj� o  ������ 0 i  � o  ������ 0 newfoldertext newFolderText� m  ����
�� 
TEXT��  ��  ��  ��  � l     ������ n      ���  ;  ��� o  ������ &0 cleanedfoldertext cleanedFolderText��  ��  ��  ��  �� 0 i  � m  ������ � n  ����� 1  ����
�� 
leng� o  ������ 0 newfoldertext newFolderText��  � ���� Q  �}����� k  �t�� ��� Z  �n������ = ����� n  ����� 1  ����
�� 
leng� o  ������ &0 cleanedfoldertext cleanedFolderText� m  ������ � r  �	��� 6 ���� 4 �����
�� 
FCff� m  ������ � l ������� = ���� 1  ���
� 
pnam� n  ���� 4  ��~�
�~ 
cobj� m  �}�} � o  ���|�| &0 cleanedfoldertext cleanedFolderText��  ��  � o      �{�{ 00 selectedfoldertemplate selectedFolderTemplate��  � k  n�� ��� r  '��� 6%��� 2  �z
�z 
FCff� l $��y�x� = $��� n ��� 1  �w
�w 
pnam�  g  � n  #��� 4  #�v�
�v 
cobj� m  !"�u�u��� o  �t�t &0 cleanedfoldertext cleanedFolderText�y  �x  � o      �s�s 0 	thefolder 	theFolder� ��r� Y  (n��q���p� k  5i�� ��� r  5C��� n  5?��� 1  ;?�o
�o 
ctnr� n  5;��� 4  6;�n�
�n 
cobj� o  9:�m�m 0 i  � o  56�l�l 0 	thefolder 	theFolder� o      �k�k 0 containfolder containFolder� ��j� Z  Di���i�h� = DV��� n  DK��� 1  GK�g
�g 
pnam� o  DG�f�f 0 containfolder containFolder� l KU��e�d� n  KU��� 4  NU�c�
�c 
cobj� m  QT�b�b��� o  KN�a�a &0 cleanedfoldertext cleanedFolderText�e  �d  � k  Ye�� ��� r  Yc��� n  Y_��� 4  Z_�`�
�` 
cobj� o  ]^�_�_ 0 i  � o  YZ�^�^ 0 	thefolder 	theFolder� o      �]�] 00 selectedfoldertemplate selectedFolderTemplate� ��\�  S  de�\  �i  �h  �j  �q 0 i  � m  +,�[�[ � n  ,0��� 1  -/�Z
�Z 
leng� o  ,-�Y�Y 0 	thefolder 	theFolder�p  �r  � ��X� r  ot� � m  op�W
�W boovtrue  o      �V�V (0 defaultfolderfound defaultFolderFound�X  � R      �U�T�S
�U .ascrerr ****      � ****�T  �S  ��  ��  ��  ��  3  l ���R�Q�P�R  �Q  �P    r  �� n  �� 4  ���O	
�O 
cobj	 m  ���N�N  n ��

 I  ���M�L�M $0 findthevariables findTheVariables �K o  ���J�J 20 selectedprojecttemplate selectedProjectTemplate�K  �L    f  �� o      �I�I 0 thevariables theVariables  r  �� n  �� 4  ���H
�H 
cobj m  ���G�G  n �� I  ���F�E�F $0 findthevariables findTheVariables �D o  ���C�C 20 selectedprojecttemplate selectedProjectTemplate�D  �E    f  �� o      �B�B 00 thelistvariableoptions theListVariableOptions  l ���A�@�?�A  �@  �?    r  �� m  �� �     o      �>�> 0 justduplicate justDuplicate !"! Z  ��#$�=�<# = ��%&% l ��'�;�:' n  ��()( 1  ���9
�9 
leng) o  ���8�8 0 thevariables theVariables�;  �:  & m  ���7�7  $ k  ��** +,+ r  ��-.- n  ��/0/ 1  ���6
�6 
bhit0 l ��1�5�41 I ���323
�3 .sysodisAaleR        TEXT2 b  ��454 b  ��676 b  ��898 b  ��:;: b  ��<=< m  ��>> �??� N o   v a r i a b l e s   w e r e   f o u n d   i n   t h e   s e l e c t e d   p r o j e c t .   D o   y o u   w a n t   t o   s i m p l y   c o p y   t h i s   p r o j e c t   t o   t h e   s e l e c t e d   f o l d e r ?   ( M a k e   s u r e   t h a t   a n y   v a r i a b l e s   a r e   a l l   i n   o n e   p a r a g r a p h   i n   t h e   p r o j e c t ' s   n o t e   a n d   a r e   i n   t h e   f o r m a t :  = 1  ���2
�2 
quot; o  ���1�1  0 variablesymbol variableSymbol9 m  ��@@ �AA  v a r i a b l e N a m e7 1  ���0
�0 
quot5 m  ��BB �CC  ) .3 �/DE
�/ 
btnsD J  ��FF GHG m  ��II �JJ  N o ,   N e v e r m i n dH K�.K m  ��LL �MM  Y e s ,   D u p l i c a t e�.  E �-N�,
�- 
dfltN m  ���+�+ �,  �5  �4  . o      �*�* 0 justduplicate justDuplicate, O�)O Z ��PQ�(�'P > ��RSR o  ���&�& 0 justduplicate justDuplicateS m  ��TT �UU  Y e s ,   D u p l i c a t eQ L  ���%�%  �(  �'  �)  �=  �<  " VWV l ���$�#�"�$  �#  �"  W XYX Z  �Z[�!� Z H  � \\ o  ���� (0 defaultfolderfound defaultFolderFound[ k  ]] ^_^ r  *`a` 6&bcb 2  �
� 
FCffc F  %ded l f��f H  gg E  hih n jkj 1  �
� 
pnamk  g  i o  �� .0 defaulttemplatefolder defaultTemplateFolder�  �  e l $l��l = $mnm n  opo 1   �
� 
FCHep  g  n m  !#�
� boovfals�  �  a o      �� 0 
folderlist 
folderList_ qrq r  +4sts J  +0uu v�v m  +.ww �xx  ( T o p   L e v e l )�  t o      ��  0 foldernamelist folderNameListr yzy X  5�{�|{ k  K�}} ~~ r  KR��� m  KN�� ���  � o      �� 0 nextlistitem nextListItem ��� Z Sn����� = S`��� l S\���� n  S\��� m  X\�
� 
pcls� n SX��� 1  TX�
� 
ctnr� o  ST�
�
 0 	thefolder 	theFolder�  �  � m  \_�	
�	 
FCAr� r  cj��� m  cf�� ��� !�  � o      �� 0 nextlistitem nextListItem�  �  � ��� r  o|��� b  ox��� o  or�� 0 nextlistitem nextListItem� l rw���� n  rw��� 1  sw�
� 
pnam� o  rs�� 0 	thefolder 	theFolder�  �  � o      �� 0 nextlistitem nextListItem� ��� r  }���� o  }�� �  0 nextlistitem nextListItem� l     ������ n      ���  ;  ��� o  ������  0 foldernamelist folderNameList��  ��  �  � 0 	thefolder 	theFolder| o  8;���� 0 
folderlist 
folderListz ��� l ����������  ��  ��  � ��� r  ����� m  ���� ��� Z S e l e c t   a   F o l d e r   F o r   T h e   N e w   T e m p l a t e   I n s t a n c e� o      ���� "0 chooselisttitle chooseListTitle� ��� r  ����� m  ���� ��� � I n   w h i c h   f o l d e r   w o u l d   y o u   l i k e   t o   c r e a t e   a   n e w   i n s t a n c e   o f   t h i s   t e m p l a t e ?� o      ����  0 chooselisttext chooseListText� ��� r  ����� m  ���� ��� , M a k e   T e m p l a t e   I n s t a n c e� o      ���� 0 chooselistok chooseListOK� ��� r  ����� I ������
�� .gtqpchltns    @   @ ns  � o  ������  0 foldernamelist folderNameList� ����
�� 
appr� o  ������ "0 chooselisttitle chooseListTitle� ����
�� 
prmp� o  ������  0 chooselisttext chooseListText� �����
�� 
okbt� o  ������ 0 chooselistok chooseListOK��  � o      ����  0 selectedfolder selectedFolder� ���� Z  ������ = ����� o  ������  0 selectedfolder selectedFolder� m  ����
�� boovfals� L  ������  � ��� = ����� o  ������  0 selectedfolder selectedFolder� J  ���� ���� m  ���� ���  ( T o p   L e v e l )��  � ���� r  ����� m  ���� ���  T o p   L e v e l� o      ���� 00 selectedfoldertemplate selectedFolderTemplate��  � k  ��� ��� r  ����� l �������� \  ����� l �������� n ����� I  ��������� (0 selectionpositions selectionPositions� ��� o  ������  0 selectedfolder selectedFolder� ��� o  ������  0 foldernamelist folderNameList� ���� m  ����
�� boovfals��  ��  �  f  ����  ��  � m  ������ ��  ��  � o      ����  0 folderposition folderPosition� ���� r  ���� n  ���� 4  ����
�� 
cobj� o  �����  0 folderposition folderPosition� o  ������ 0 
folderlist 
folderList� o      ���� 00 selectedfoldertemplate selectedFolderTemplate��  ��  �!  �   Y ��� l ��������  ��  ��  � ��� Z  I������� = ��� o  ���� 0 justduplicate justDuplicate� m  �� ���  Y e s ,   D u p l i c a t e� k  E�� ��� Z  ������� = ��� o  ���� 00 selectedfoldertemplate selectedFolderTemplate� m  �� ���  T o p   L e v e l� Z   Z ��  =  ) o   %���� (0 startorendoffolder startOrEndOfFolder m  %( � 
 s t a r t r  ,C l ,?	����	 I ,?��

�� .coreclon****      � ****
 o  ,/���� 20 selectedprojecttemplate selectedProjectTemplate ����
�� 
insh l 2;���� n  2; 8 7;��
�� 
insl n  27 2 37��
�� 
FCpr  g  23��  ��  ��  ��  ��   o      ���� (0 newprojectinstance newProjectInstance��   r  FZ l FV���� I FV��
�� .coreclon****      � **** o  FI���� 20 selectedprojecttemplate selectedProjectTemplate ����
�� 
insh l LR���� n  LR  ;  QR n  LQ 2 MQ��
�� 
FCpr  g  LM��  ��  ��  ��  ��   o      ���� (0 newprojectinstance newProjectInstance��  � Z  ]��� = ]f !  o  ]b���� (0 startorendoffolder startOrEndOfFolder! m  be"" �## 
 s t a r t r  i�$%$ l i~&����& I i~��'(
�� .coreclon****      � ****' o  il���� 20 selectedprojecttemplate selectedProjectTemplate( ��)��
�� 
insh) l oz*����* n  oz+,+ 8 vz��
�� 
insl, n  ov-.- 2 rv��
�� 
FCpr. o  or���� 00 selectedfoldertemplate selectedFolderTemplate��  ��  ��  ��  ��  % o      ���� (0 newprojectinstance newProjectInstance��   r  ��/0/ l ��1����1 I ����23
�� .coreclon****      � ****2 o  ������ 20 selectedprojecttemplate selectedProjectTemplate3 ��4��
�� 
insh4 l ��5����5 n  ��676  ;  ��7 n  ��898 2 ����
�� 
FCpr9 o  ������ 00 selectedfoldertemplate selectedFolderTemplate��  ��  ��  ��  ��  0 o      ���� (0 newprojectinstance newProjectInstance� :;: Z ��<=����< o  ������ 0 usegrowl useGrowl= n ��>?> I  ����@���� 
0 notify  @ ABA m  ��CC �DD < C r e a t i n g   N e w   T e m p l a t e   I n s t a n c eB EFE m  ��GG �HH 2 M o r e   i n p u t   m a y   b e   n e e d e d &F IJI o  ������ &0 scriptstartnotify scriptStartNotifyJ K��K m  ��LL �MM  ��  ��  ?  f  ����  ��  ; NON n ��PQP I  ����R���� $0 populatetemplate populateTemplateR STS o  ������ (0 newprojectinstance newProjectInstanceT UVU J  ������  V W��W J  ������  ��  ��  Q  f  ��O XYX Z ��Z[����Z G  ��\]\ l ��^����^ = ��_`_ n  ��aba 1  ����
�� 
FCPsb o  ������ (0 newprojectinstance newProjectInstance` m  ����
�� FCPsFCPh��  ��  ] l ��c����c = ��ded n  ��fgf 1  ����
�� 
FCPsg o  ������ (0 newprojectinstance newProjectInstancee m  ����
�� FCPsFCPD��  ��  [ r  ��hih m  ����
�� FCPsFCPai n      jkj 1  ����
�� 
FCPsk o  ���� (0 newprojectinstance newProjectInstance��  ��  Y lml r  �non b  �pqp m  ��rr �ss $ o m n i f o c u s : / / / t a s k /q l �t�~�}t n  �uvu 1  ��|
�| 
ID  v o  ���{�{ (0 newprojectinstance newProjectInstance�~  �}  o o      �z�z 0 theurl theURLm wxw Z 	(yz�y�xy o  	�w�w 0 usegrowl useGrowlz n ${|{ I  $�v}�u�v 
0 notify  } ~~ m  �� ��� 2 T e m p l a t e   I n s t a n c e   C r e a t e d ��� m  �� ��� V C l i c k   h e r e   t o   s e e   t h e   n e w   p r o j e c t   i n s t a n c e .� ��� o  �t�t "0 scriptendnotify scriptEndNotify� ��s� o   �r�r 0 theurl theURL�s  �u  |  f  �y  �x  x ��� r  )0��� m  ),�� ���  � o      �q�q 0 justduplicate justDuplicate� ��� Q  1B���p� I 49�o�n�m
�o .OFOCFCsynull���     obj �n  �m  � R      �l�k�j
�l .ascrerr ****      � ****�k  �j  �p  � ��i� L  CE�h�h  �i  ��  ��  � ��� Z Ji���g�f� o  JO�e�e 0 usegrowl useGrowl� n Re��� I  Se�d��c�d 
0 notify  � ��� m  SV�� ��� < C r e a t i n g   N e w   T e m p l a t e   I n s t a n c e� ��� m  VY�� ��� 2 M o r e   i n p u t   m a y   b e   n e e d e d &� ��� o  Y^�b�b &0 scriptstartnotify scriptStartNotify� ��a� m  ^a�� ���  �a  �c  �  f  RS�g  �f  � ��� r  jy��� n ju��� I  ku�`��_�` *0 findthereplacements findTheReplacements� ��� o  kn�^�^ 0 thevariables theVariables� ��]� o  nq�\�\ 00 thelistvariableoptions theListVariableOptions�]  �_  �  f  jk� o      �[�[ "0 thereplacements theReplacements� ��� Z z����Z�Y� = z��� l z}��X�W� 1  z}�V
�V 
rslt�X  �W  � m  }~�U
�U boovfals� L  ���T�T  �Z  �Y  � ��� l ���S�R�Q�S  �R  �Q  � ��� Z  ����P�� = ����� o  ���O�O 00 selectedfoldertemplate selectedFolderTemplate� m  ���� ���  T o p   L e v e l� Z  �����N�� = ����� o  ���M�M (0 startorendoffolder startOrEndOfFolder� m  ���� ��� 
 s t a r t� r  ����� l ����L�K� I ���J��
�J .coreclon****      � ****� o  ���I�I 20 selectedprojecttemplate selectedProjectTemplate� �H��G
�H 
insh� l ����F�E� n  ����� 8 ���D
�D 
insl� n  ����� 2 ���C
�C 
FCpr�  g  ���F  �E  �G  �L  �K  � o      �B�B (0 newprojectinstance newProjectInstance�N  � r  ����� l ����A�@� I ���?��
�? .coreclon****      � ****� o  ���>�> 20 selectedprojecttemplate selectedProjectTemplate� �=��<
�= 
insh� l ����;�:� n  �����  ;  ��� n  ����� 2 ���9
�9 
FCpr�  g  ���;  �:  �<  �A  �@  � o      �8�8 (0 newprojectinstance newProjectInstance�P  � Z  ����7�� = ����� o  ���6�6 (0 startorendoffolder startOrEndOfFolder� m  ���� ��� 
 s t a r t� r  ����� l ����5�4� I ���3��
�3 .coreclon****      � ****� o  ���2�2 20 selectedprojecttemplate selectedProjectTemplate� �1��0
�1 
insh� l ����/�.� n  ����� 8 ���-
�- 
insl� n  ����� 2 ���,
�, 
FCpr� o  ���+�+ 00 selectedfoldertemplate selectedFolderTemplate�/  �.  �0  �5  �4  � o      �*�* (0 newprojectinstance newProjectInstance�7  � r  ���� l �
��)�(� I �
�'��
�' .coreclon****      � ****� o  ���&�& 20 selectedprojecttemplate selectedProjectTemplate� �%��$
�% 
insh� l ���#�"� n  ����  ;  � n  ���� 2 �!
�! 
FCpr� o  �� �  00 selectedfoldertemplate selectedFolderTemplate�#  �"  �$  �)  �(  � o      �� (0 newprojectinstance newProjectInstance� ��� Z , ��  =  n   1  �
� 
FCPs o  �� (0 newprojectinstance newProjectInstance m  �
� FCPsFCPh r  ( m   �
� FCPsFCPa n      	 1  #'�
� 
FCPs	 o   #�� (0 newprojectinstance newProjectInstance�  �  � 

 Z  -	#�� o  -0�� (0 defaultfolderfound defaultFolderFound k  3	  s  3? l 3:�� n  3: 1  6:�
� 
FCno o  36�� (0 newprojectinstance newProjectInstance�  �   o      �� 0 tempnote tempNote  Y  @y� k  Xt  Z Xr �� C  Xf!"! n  X`#$# 4  [`�%
� 
cpar% o  ^_�
�
 0 i  $ o  X[�	�	 0 tempnote tempNote" o  `e�� ,0 defaultfolderpointer defaultFolderPointer  r  in&'& o  ij�� 0 i  ' o      �� "0 parawithpointer paraWithPointer�  �   (�(  S  st�  � 0 i   l CR)��) I CR�*�
� .corecnte****       ***** n CN+,+ 2 JN� 
�  
cpar, l CJ-����- n  CJ./. 1  FJ��
�� 
FCno/ o  CF���� 20 selectedprojecttemplate selectedProjectTemplate��  ��  �  �  �   m  RS����  m  ST������ 010 r  z�232 J  z44 5��5 o  z}��
�� 
ret ��  3 n     676 1  ����
�� 
txdl7  f  �1 898 Z  �		:;<=: = ��>?> o  ������ "0 parawithpointer paraWithPointer? m  ������ ; r  ��@A@ c  ��BCB n  ��DED 7 ����FG
�� 
cparF m  ������ G m  ��������E o  ������ 0 tempnote tempNoteC m  ����
�� 
TEXTA l     H����H o      ���� 0 newnote newNote��  ��  < IJI = ��KLK o  ������ "0 parawithpointer paraWithPointerL l ��M����M I ����N��
�� .corecnte****       ****N n  ��OPO 2 ����
�� 
cparP n  ��QRQ 1  ����
�� 
FCnoR o  ������ 20 selectedprojecttemplate selectedProjectTemplate��  ��  ��  J S��S r  ��TUT c  ��VWV n  ��XYX 7 ����Z[
�� 
cparZ m  ������ [ m  ��������Y o  ������ 0 tempnote tempNoteW m  ����
�� 
TEXTU l     \����\ o      ���� 0 newnote newNote��  ��  ��  = r  �		]^] c  �	_`_ l �	a����a b  �	bcb l ��d����d n  ��efe 7 ����gh
�� 
cparg m  ������ h l ��i����i \  ��jkj o  ������ "0 parawithpointer paraWithPointerk m  ������ ��  ��  f o  ������ 0 tempnote tempNote��  ��  c l �	 l����l n  �	 mnm 7 �	 ��op
�� 
cparo l ��q����q [  ��rsr o  ������ "0 parawithpointer paraWithPointers m  ������ ��  ��  p m  ��������n o  ������ 0 tempnote tempNote��  ��  ��  ��  ` m  		��
�� 
TEXT^ l     t����t o      ���� 0 newnote newNote��  ��  9 uvu r  	
	wxw m  	
	yy �zz  x n     {|{ 1  		��
�� 
txdl|  f  		v }��} r  		~~ o  		���� 0 newnote newNote l     ������ n      ��� 1  		��
�� 
FCno� o  		���� (0 newprojectinstance newProjectInstance��  ��  ��  �  �   ��� l 	$	$��������  ��  ��  � ��� r  	$	6��� n 	$	2��� I  	%	2������� $0 populatetemplate populateTemplate� ��� o  	%	(���� (0 newprojectinstance newProjectInstance� ��� o  	(	+���� 0 thevariables theVariables� ���� o  	+	.���� "0 thereplacements theReplacements��  ��  �  f  	$	%� o      ����  0 theattachments theAttachments� ��� l 	7	7��������  ��  ��  � ��� r  	7	F��� b  	7	B��� m  	7	:�� ��� $ o m n i f o c u s : / / / t a s k /� l 	:	A������ n  	:	A��� 1  	=	A��
�� 
ID  � o  	:	=���� (0 newprojectinstance newProjectInstance��  ��  � o      ���� 0 theurl theURL� ��� Z 	G	f������� o  	G	L���� 0 usegrowl useGrowl� n 	O	b��� I  	P	b������� 
0 notify  � ��� m  	P	S�� ���  S c r i p t   e n d e d� ��� m  	S	V�� ��� V C l i c k   h e r e   t o   s e e   t h e   n e w   p r o j e c t   i n s t a n c e .� ��� o  	V	[���� "0 scriptendnotify scriptEndNotify� ���� o  	[	^���� 0 theurl theURL��  ��  �  f  	O	P��  ��  � ���� Q  	g	x����� I 	j	o������
�� .OFOCFCsynull���     obj ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��   � 1    ��
�� 
FCDo � m     ���                                                                                  OFOC  alis    X  Macintosh HD               ͘L�H+   v<�OmniFocus.app                                                   ���ΞR        ����  	                Applications    ͗�.      Ν�     v<�  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  ��  ��   � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� i   R U��� I      ������� (0 selectionpositions selectionPositions� ��� o      ���� 0 
selectlist 
selectList� ��� o      ���� 0 originallist originalList� ���� o      ���� (0 multipleselections multipleSelections��  ��  � k     ��� ��� Z     ������� o     ���� (0 multipleselections multipleSelections� k    q�� ��� r    ��� m    ����  � o      ���� 0 choicesfound choicesFound� ��� r    ��� J    
����  � o      ���� ,0 positionofselections positionOfSelections� ��� r    ��� m    ���� � o      ���� 0 j  � ���� W    q��� k   % l�� ��� r   % (��� m   % &���� � o      ���� 0 k  � ��� r   ) ,��� m   ) *��
�� boovfals� o      ���� 0 achoicefound aChoiceFound� ��� W   - f��� k   = a�� ��� Z   = [������ =  = F��� l  = A��~�}� n   = A��� 4   > A�|�
�| 
cobj� o   ? @�{�{ 0 k  � o   = >�z�z 0 
selectlist 
selectList�~  �}  � l  A E��y�x� n   A E��� 4   B E�w�
�w 
cobj� o   C D�v�v 0 j  � o   A B�u�u 0 originallist originalList�y  �x  � k   I W�� ��� r   I M��� o   I J�t�t 0 j  � n      ���  ;   K L� o   J K�s�s ,0 positionofselections positionOfSelections� ��� r   N Q��� m   N O�r
�r boovtrue� o      �q�q 0 achoicefound aChoiceFound� ��p� r   R W   l  R U�o�n [   R U o   R S�m�m 0 choicesfound choicesFound m   S T�l�l �o  �n   o      �k�k 0 choicesfound choicesFound�p  ��  �  � �j r   \ a [   \ _	 o   \ ]�i�i 0 k  	 m   ] ^�h�h  o      �g�g 0 k  �j  � G   1 <

 l  1 6�f�e ?   1 6 o   1 2�d�d 0 k   l  2 5�c�b n   2 5 1   3 5�a
�a 
leng o   2 3�`�` 0 
selectlist 
selectList�c  �b  �f  �e   o   9 :�_�_ 0 achoicefound aChoiceFound� �^ r   g l [   g j o   g h�]�] 0 j   m   h i�\�\  o      �[�[ 0 j  �^  � G    $ l   �Z�Y ?     o    �X�X 0 j   l   �W�V n     1    �U
�U 
leng o    �T�T 0 originallist originalList�W  �V  �Z  �Y   l   "�S�R =    " !  o    �Q�Q 0 choicesfound choicesFound! l   !"�P�O" n    !#$# 1    !�N
�N 
leng$ o    �M�M 0 
selectlist 
selectList�P  �O  �S  �R  ��  ��  � k   t �%% &'& r   t w()( m   t u�L�L ) o      �K�K 0 j  ' *+* r   x {,-, m   x y�J
�J 
null- o      �I�I ,0 positionofselections positionOfSelections+ .�H. W   | �/0/ k   � �11 232 r   � �454 m   � ��G�G 5 o      �F�F 0 k  3 676 W   � �898 k   � �:: ;<; Z   � �=>�E�D= =  � �?@? l  � �A�C�BA n   � �BCB 4   � ��AD
�A 
cobjD o   � ��@�@ 0 k  C o   � ��?�? 0 
selectlist 
selectList�C  �B  @ l  � �E�>�=E n   � �FGF 4   � ��<H
�< 
cobjH o   � ��;�; 0 j  G o   � ��:�: 0 originallist originalList�>  �=  > r   � �IJI o   � ��9�9 0 j  J o      �8�8 ,0 positionofselections positionOfSelections�E  �D  < K�7K r   � �LML [   � �NON o   � ��6�6 0 k  O m   � ��5�5 M o      �4�4 0 k  �7  9 l  � �P�3�2P G   � �QRQ l  � �S�1�0S ?   � �TUT o   � ��/�/ 0 k  U l  � �V�.�-V n   � �WXW 1   � ��,
�, 
lengX o   � ��+�+ 0 
selectlist 
selectList�.  �-  �1  �0  R l  � �Y�*�)Y >  � �Z[Z o   � ��(�( ,0 positionofselections positionOfSelections[ m   � ��'
�' 
null�*  �)  �3  �2  7 \�&\ r   � �]^] [   � �_`_ o   � ��%�% 0 j  ` m   � ��$�$ ^ o      �#�# 0 j  �&  0 l  � �a�"�!a G   � �bcb ?   � �ded o   � �� �  0 j  e l  � �f��f n   � �ghg 1   � ��
� 
lengh o   � ��� 0 originallist originalList�  �  c l  � �i��i >  � �jkj o   � ��� ,0 positionofselections positionOfSelectionsk m   � ��
� 
null�  �  �"  �!  �H  � l�l L   � �mm o   � ��� ,0 positionofselections positionOfSelections�  � non l     ����  �  �  o pqp l     ����  �  �  q rsr i   V Ytut I      �v�� $0 populatetemplate populateTemplatev wxw o      �� 0 
theproject 
theProjectx yzy o      �� $0 cleanedvariables cleanedVariablesz {�{ o      �
�
 "0 thereplacements theReplacements�  �  u k    || }~} r     � J     �	�	  � o      �� .0 delimcleanedvariables delimCleanedVariables~ ��� Y    $������ r    ��� l   ���� b    ��� o    ��  0 variablesymbol variableSymbol� l   ���� n    ��� 4    � �
�  
cobj� o    ���� 0 i  � o    ���� $0 cleanedvariables cleanedVariables�  �  �  �  � l     ������ n      ���  ;    � o    ���� .0 delimcleanedvariables delimCleanedVariables��  ��  � 0 i  � m    	���� � l  	 ������ n   	 ��� 1   
 ��
�� 
leng� o   	 
���� $0 cleanedvariables cleanedVariables��  ��  �  � ���� O   %��� O   )
��� O   /	��� k   3�� ��� r   3 B��� n  3 @��� I   4 @�������  0 attachmentlist attachmentList� ��� n   4 7��� 1   5 7��
�� 
ID  �  g   4 5� ���� c   7 <��� n   7 :��� m   8 :��
�� 
pcls�  g   7 8� m   : ;��
�� 
TEXT��  ��  �  f   3 4� o      ���� &0 theattachmentlist theAttachmentList� ��� Z   C ]������� ?   C H��� n   C F��� 1   D F��
�� 
leng� o   C D���� $0 cleanedvariables cleanedVariables� m   F G����  � r   K Y��� n  K U��� I   L U������� $0 replacevariables replaceVariables� ��� n  L O��� 1   M O��
�� 
pnam�  g   L M� ��� o   O P���� .0 delimcleanedvariables delimCleanedVariables� ���� o   P Q���� "0 thereplacements theReplacements��  ��  �  f   K L� n     ��� 1   V X��
�� 
pnam�  g   U V��  ��  � ��� r   ^ c��� J   ^ a�� ���� m   ^ _�� ���  ��  � o      ���� (0 possibledatechange possibleDateChange� ��� V   d ���� k   o ��� ��� r   o y��� n  o w��� I   p w������� 80 checkingfordateinformation checkingForDateInformation� ���  g   p q� ��� o   q r���� .0 delimcleanedvariables delimCleanedVariables� ���� o   r s���� "0 thereplacements theReplacements��  ��  �  f   o p� o      ���� (0 possibledatechange possibleDateChange� ���� Z   z ������� >  z ���� n   z ~��� 4   { ~���
�� 
cobj� m   | }���� � o   z {���� (0 possibledatechange possibleDateChange� m   ~ ��
�� 
msng� k   � ��� ��� Z   � ������� =  � ���� n   � ���� 4   � ����
�� 
cobj� m   � ����� � o   � ����� (0 possibledatechange possibleDateChange� m   � ��� ��� 
 S t a r t� r   � ���� n   � ���� 4   � ����
�� 
cobj� m   � ����� � o   � ����� (0 possibledatechange possibleDateChange� n     ��� 1   � ���
�� 
FCDs�  g   � ���  � r   � ���� n   � ���� 4   � ����
�� 
cobj� m   � ����� � o   � ����� (0 possibledatechange possibleDateChange� n     ��� 1   � ���
�� 
FCDd�  g   � ��  ��  r   � � n   � � 4   � ���
�� 
cobj m   � �����  o   � ����� (0 possibledatechange possibleDateChange n      1   � ���
�� 
FCno  g   � ���  � 	 =  � �

 l  � ����� n   � � 1   � ���
�� 
leng o   � ����� (0 possibledatechange possibleDateChange��  ��   m   � ����� 	 �� r   � � n   � � 4   � ���
�� 
cobj m   � �����  o   � ����� (0 possibledatechange possibleDateChange n      1   � ���
�� 
FCno  g   � ���  ��  ��  � >  h n n   h l 4   i l��
�� 
cobj m   j k����  o   h i���� (0 possibledatechange possibleDateChange m   l m��
�� 
msng�  Z   � ����� ?   � � !  n   � �"#" 1   � ���
�� 
leng# o   � ����� $0 cleanedvariables cleanedVariables! m   � �����   k   � �$$ %&% r   � �'(' n  � �)*) 1   � ���
�� 
FCno*  g   � �( o      ���� 0 thefullnote theFullNote& +,+ r   � �-.- n  � �/0/ I   � ���1���� (0 eliminatevariables eliminateVariables1 2��2 o   � ����� 0 thefullnote theFullNote��  ��  0  f   � �. o      ���� 0 
thenewnote 
theNewNote, 3��3 r   � �454 n  � �676 I   � ���8���� $0 replacevariables replaceVariables8 9:9 o   � ����� 0 
thenewnote 
theNewNote: ;<; o   � ����� .0 delimcleanedvariables delimCleanedVariables< =��= o   � ����� "0 thereplacements theReplacements��  ��  7  f   � �5 n     >?> 1   � ���
�� 
FCno?  g   � ���  ��  ��   @A@ Z   �sBC����B G   �DED E   � �FGF n  � �HIH 1   � ���
�� 
FCnoI  g   � �G m   � �JJ �KK  @ s u p p o r t :   a s kE E  
LML n NON 1  ��
�� 
FCnoO  g  M m  	PP �QQ  @ s u p p o r t : a s kC k  oRR STS r  0UVU c  .WXW l ,Y����Y I ,����Z
�� .sysostflalis    ��� null��  Z ��[��
�� 
prmp[ b  (\]\ b  $^_^ b   `a` b  bcb m  dd �ee � S e l e c t   t h e   f o l d e r   t h a t   c o n t a i n s   t h e   r e f e r e n c e   m a t e r i a l   f o r   t h e   p r o j e c t  c 1  ��
�� 
quota l f����f n  ghg 1  ��
�� 
pnamh  g  ��  ��  _ 1   #��
�� 
quot] m  $'ii �jj  .��  ��  ��  X m  ,-��
�� 
TEXTV o      ����  0 thesupportpath theSupportPathT klk r  1?mnm J  19oo pqp m  14rr �ss 
 :   a s kq t��t m  47uu �vv  : a s k��  n n     wxw 1  :>��
�� 
txdlx  f  9:l yzy r  @M{|{ n  @K}~} 2  GK��
�� 
citm~ l @G���� c  @G��� n @E��� 1  AE��
�� 
FCno�  g  @A� m  EF��
�� 
TEXT��  ��  | o      ����  0 thesupportnote theSupportNotez ��� r  N[��� J  NU�� ���� b  NS��� 1  NQ��
�� 
spac� o  QR����  0 thesupportpath theSupportPath��  � n     ��� 1  VZ��
�� 
txdl�  f  UV� ��� r  \e��� c  \_��� o  \]����  0 thesupportnote theSupportNote� m  ]^��
�� 
TEXT� n     ��� 1  `d��
�� 
FCno�  g  _`� ���� r  fo��� m  fi�� ���  � n     ��� 1  jn�
� 
txdl�  f  ij��  ��  ��  A ��� r  tw��� m  tu�~
�~ boovfals� o      �}�} &0 attachmentrequest attachmentRequest� ��� Z  x����|�{� G  x���� E  x���� n x}��� 1  y}�z
�z 
FCno�  g  xy� m  }��� ���  a t t a c h m e n t :   a s k� E  ����� n ����� 1  ���y
�y 
FCno�  g  ��� m  ���� ���  a t t a c h m e n t : a s k� k  ���� ��� r  ����� m  ���x
�x boovtrue� o      �w�w &0 attachmentrequest attachmentRequest� ��v� r  ����� n ����� I  ���u��t�u $0 replacevariables replaceVariables� ��� n ����� 1  ���s
�s 
FCno�  g  ��� ��� J  ���� ��� m  ���� ���  a t t a c h m e n t : a s k� ��r� m  ���� ���  a t t a c h m e n t :   a s k�r  � ��q� J  ���� ��� m  ���� ���  � ��p� m  ���� ���  �p  �q  �t  �  f  ��� n     ��� 1  ���o
�o 
FCno�  g  ���v  �|  �{  � ��� r  ����� n ����� I  ���n��m�n &0 cleanexcessbreaks cleanExcessBreaks� ��l� n ����� 1  ���k
�k 
FCno�  g  ���l  �m  �  f  ��� n     ��� 1  ���j
�j 
FCno�  g  ��� ��� Z  �!���i�h� o  ���g�g &0 attachmentrequest attachmentRequest� Q  ����f� k  ��� ��� r  ����� c  ����� l ����e�d� I ���c�b�
�c .sysostdfalis    ��� null�b  � �a��`
�a 
prmp� b  ����� b  ����� m  ���� ��� | Y o u   i n d i c a t e d   y o u   w o u l d   l i k e   t o   a t t a c h   a   f i l e   t o   t h e   p r o j e c t   "� n  ����� 1  ���_
�_ 
pnam�  g  ��� m  ���� ��� H " .   P l e a s e   s e l e c t   t h e   f i l e   t o   a t t a c h .�`  �e  �d  � m  ���^
�^ 
ctxt� o      �]�] 00 theattachfilepathalias theAttachFilePathAlias� ��\� O  ���� I ��[�Z 
�[ .corecrel****      � null�Z    �Y
�Y 
kocl m  ���X
�X 
OSfA �W�V
�W 
prdt K   �U
�U 
atfn o  �T�T 00 theattachfilepathalias theAttachFilePathAlias �S�R
�S 
OSin m  	�Q
�Q boovfals�R  �V  � n ��	 1  ���P
�P 
FCno	  g  ���\  � R      �O�N�M
�O .ascrerr ****      � ****�N  �M  �f  �i  �h  � 

 O  "^ X  *]�L I <X�K�J
�K .corecrel****      � null�J   �I
�I 
kocl m  @C�H
�H 
OSfA �G�F
�G 
prdt K  FR �E
�E 
atfn o  IJ�D�D 0 theattachment theAttachment �C�B
�C 
OSin m  MN�A
�A boovfals�B  �F  �L 0 theattachment theAttachment o  -.�@�@ &0 theattachmentlist theAttachmentList n "' 1  #'�?
�? 
FCno  g  "#  r  _b m  _`�>
�> boovfals o      �=�= &0 attachmentrequest attachmentRequest  l cc�<�;�:�<  �;  �:    !  l cc�9"#�9  "   Going through the tasks   # �$$ 0   G o i n g   t h r o u g h   t h e   t a s k s! %&% Y  c�'�8()�7' O  u�*+* k  ~�,, -.- r  ~�/0/ n ~�121 I  ��63�5�6  0 attachmentlist attachmentList3 454 n  �676 1  ���4
�4 
ID  7  g  �5 8�38 c  ��9:9 n  ��;<; m  ���2
�2 
pcls<  g  ��: m  ���1
�1 
TEXT�3  �5  2  f  ~0 o      �0�0 &0 theattachmentlist theAttachmentList. =>= Z  ��?@�/�.? ?  ��ABA n  ��CDC 1  ���-
�- 
lengD o  ���,�, $0 cleanedvariables cleanedVariablesB m  ���+�+  @ r  ��EFE n ��GHG I  ���*I�)�* $0 replacevariables replaceVariablesI JKJ n ��LML 1  ���(
�( 
pnamM  g  ��K NON o  ���'�' .0 delimcleanedvariables delimCleanedVariablesO P�&P o  ���%�% "0 thereplacements theReplacements�&  �)  H  f  ��F n     QRQ 1  ���$
�$ 
pnamR  g  ���/  �.  > STS r  ��UVU m  ���#
�# boovfalsV o      �"�" "0 completethetask completeTheTaskT WXW Z  ��YZ�!� Y G  ��[\[ E  ��]^] n ��_`_ 1  ���
� 
FCno`  g  ��^ m  ��aa �bb  c o m p l e t e : a s k\ E  ��cdc n ��efe 1  ���
� 
FCnof  g  ��d m  ��gg �hh  c o m p l e t e :   a s kZ r  ��iji l ��k��k = ��lml n  ��non 1  ���
� 
bhito l ��p��p I ���qr
� .sysodlogaskr        TEXTq b  ��sts b  ��uvu m  ��ww �xx � I n   t h e   n o t e ,   y o u   i n d i c a t e d   t h a t   y o u   w a n t e d   t o   b e   a s k e d   w h e t h e r   t o   c o m p l e t e   t h e   t a s k   "v l ��y��y n  ��z{z 1  ���
� 
pnam{  g  ���  �  t m  ��|| �}} � "   w h e n   y o u   c r e a t e   a   n e w   i n s t a n c e   o f   t h i s   p r o j e c t .   W o u l d   y o u   l i k e   t o   c o m p l e t e   t h i s   t a s k ?r �~
� 
btns~ J  ���� ��� m  ���� ���  Y e s ,   C o m p l e t e� ��� m  ���� ��� ( N o ,   L e a v e   I n c o m p l e t e�   ���
� 
dflt� m  ���� �  �  �  m m  ���� ���  Y e s ,   C o m p l e t e�  �  j o      �� "0 completethetask completeTheTask�!  �   X ��� Z  ������� o  ���� "0 completethetask completeTheTask� r  ���� m  ���
� boovtrue� n     ��� 1  ��
� 
FCcd�  g  ���  � k  ��� ��� r  &��� n  ��� I   �
��	�
 $0 replacevariables replaceVariables� ��� n ��� 1  �
� 
FCno�  g  � ��� J  �� ��� m  �� ���  c o m p l e t e : a s k� ��� m  �� ���  c o m p l e t e :   a s k�  � ��� J  �� ��� m  �� ���  � ��� m  �� ���  �  �  �	  �  f  � n     ��� 1  !%�
� 
FCno�  g   !� ��� r  '.��� J  ',�� ��� m  '*�� ���  �  � o      �� (0 possibledatechange possibleDateChange� ��� V  /���� k  :��� ��� r  :D��� n :B��� I  ;B��� � 80 checkingfordateinformation checkingForDateInformation� ���  g  ;<� ��� o  <=���� .0 delimcleanedvariables delimCleanedVariables� ���� o  =>���� "0 thereplacements theReplacements��  �   �  f  :;� o      ���� (0 possibledatechange possibleDateChange� ���� Z  E������� > EK��� n  EI��� 4  FI���
�� 
cobj� m  GH���� � o  EF���� (0 possibledatechange possibleDateChange� m  IJ��
�� 
msng� k  Nw�� ��� Z  Nl������ = NV��� n  NR��� 4  OR���
�� 
cobj� m  PQ���� � o  NO���� (0 possibledatechange possibleDateChange� m  RU�� ��� 
 S t a r t� r  Ya��� n  Y]��� 4  Z]���
�� 
cobj� m  [\���� � o  YZ���� (0 possibledatechange possibleDateChange� n     ��� 1  ^`��
�� 
FCDs�  g  ]^��  � r  dl��� n  dh��� 4  eh���
�� 
cobj� m  fg���� � o  de���� (0 possibledatechange possibleDateChange� n     ��� 1  ik��
�� 
FCDd�  g  hi� ���� r  mw��� n  mq��� 4  nq���
�� 
cobj� m  op���� � o  mn���� (0 possibledatechange possibleDateChange� n     ��� 1  rv��
�� 
FCno�  g  qr��  � ��� = z��� l z}������ n  z}�	 � 1  {}��
�� 
leng	  o  z{���� (0 possibledatechange possibleDateChange��  ��  � m  }~���� � 	��	 r  ��			 n  ��			 4  ����	
�� 
cobj	 m  ������ 	 o  ������ (0 possibledatechange possibleDateChange	 n     			 1  ����
�� 
FCno	  g  ����  ��  ��  � > 39			
		 n  37			 4  47��	
�� 
cobj	 m  56���� 	 o  34���� (0 possibledatechange possibleDateChange	
 m  78��
�� 
msng� 			 Z  ��		����	 ?  ��			 n  ��			 1  ����
�� 
leng	 o  ������ $0 cleanedvariables cleanedVariables	 m  ������  	 k  ��		 			 n ��			 I  ����	���� $0 conditionalcheck conditionalCheck	 			  g  ��	 			 o  ������ $0 cleanedvariables cleanedVariables	 	 ��	  o  ������ "0 thereplacements theReplacements��  ��  	  f  ��	 	!	"	! r  ��	#	$	# n ��	%	&	% I  ����	'���� $0 replacevariables replaceVariables	' 	(	)	( n ��	*	+	* 1  ����
�� 
FCno	+  g  ��	) 	,	-	, o  ������ .0 delimcleanedvariables delimCleanedVariables	- 	.��	. o  ������ "0 thereplacements theReplacements��  ��  	&  f  ��	$ n     	/	0	/ 1  ����
�� 
FCno	0  g  ��	" 	1��	1 Z  ��	2	3����	2 > ��	4	5	4 n ��	6	7	6 m  ����
�� 
FCct	7  g  ��	5 m  ����
�� 
msng	3 r  ��	8	9	8 n ��	:	;	: I  ����	<���� &0 workingthecontext workingTheContext	< 	=	>	= n ��	?	@	? m  ����
�� 
FCct	@  g  ��	> 	A	B	A o  ������ .0 delimcleanedvariables delimCleanedVariables	B 	C��	C o  ������ "0 thereplacements theReplacements��  ��  	;  f  ��	9 n     	D	E	D m  ����
�� 
FCct	E  g  ����  ��  ��  ��  ��  	 	F	G	F r  ��	H	I	H m  ����
�� boovfals	I o      ���� &0 attachmentrequest attachmentRequest	G 	J	K	J Z  �'	L	M����	L G  ��	N	O	N E  ��	P	Q	P n ��	R	S	R 1  ����
�� 
FCno	S  g  ��	Q m  ��	T	T �	U	U  a t t a c h m e n t :   a s k	O E  ��	V	W	V n ��	X	Y	X 1  ����
�� 
FCno	Y  g  ��	W m  ��	Z	Z �	[	[  a t t a c h m e n t : a s k	M k  �#	\	\ 	]	^	] r  �	_	`	_ m  � ��
�� boovtrue	` o      ���� &0 attachmentrequest attachmentRequest	^ 	a��	a r  #	b	c	b n 	d	e	d I  ��	f���� $0 replacevariables replaceVariables	f 	g	h	g n 		i	j	i 1  	��
�� 
FCno	j  g  	h 	k	l	k J  		m	m 	n	o	n m  		p	p �	q	q  a t t a c h m e n t : a s k	o 	r��	r m  	s	s �	t	t  a t t a c h m e n t :   a s k��  	l 	u��	u J  	v	v 	w	x	w m  	y	y �	z	z  	x 	{��	{ m  	|	| �	}	}  ��  ��  ��  	e  f  	c n     	~		~ 1  "��
�� 
FCno	  g  ��  ��  ��  	K 	�	�	� r  (8	�	�	� n (2	�	�	� I  )2��	����� &0 cleanexcessbreaks cleanExcessBreaks	� 	���	� n ).	�	�	� 1  *.��
�� 
FCno	�  g  )*��  ��  	�  f  ()	� n     	�	�	� 1  37��
�� 
FCno	�  g  23	� 	�	�	� Z  9�	�	�����	� o  9:���� &0 attachmentrequest attachmentRequest	� Q  =�	�	���	� k  @	�	� 	�	�	� r  @Y	�	�	� c  @W	�	�	� l @S	�����	� I @S����	�
�� .sysostdfalis    ��� null��  	� ��	���
�� 
prmp	� b  DO	�	�	� b  DK	�	�	� m  DG	�	� �	�	� v Y o u   i n d i c a t e d   y o u   w o u l d   l i k e   t o   a t t a c h   a   f i l e   t o   t h e   t a s k   "	� n  GJ	�	�	� 1  HJ��
�� 
pnam	�  g  GH	� m  KN	�	� �	�	� H " .   P l e a s e   s e l e c t   t h e   f i l e   t o   a t t a c h .��  ��  ��  	� m  SV��
�� 
ctxt	� o      ���� 00 theattachfilepathalias theAttachFilePathAlias	� 	�	�	� l ZZ��������  ��  ��  	� 	���	� O  Z	�	�	� I b~����	�
�� .corecrel****      � null��  	� ��	�	�
�� 
kocl	� m  fi��
�� 
OSfA	� ��	���
�� 
prdt	� K  lx	�	� ��	�	�
�� 
atfn	� o  op���� 00 theattachfilepathalias theAttachFilePathAlias	� ��	���
�� 
OSin	� m  st��
�� boovfals��  ��  	� n Z_	�	�	� 1  [_��
�� 
FCno	�  g  Z[��  	� R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��  	� 	�	�	� O  ��	�	�	� X  ��	���	�	� I ������	�
�� .corecrel****      � null��  	� ��	�	�
�� 
kocl	� m  ����
�� 
OSfA	� �	��~
� 
prdt	� K  ��	�	� �}	�	�
�} 
atfn	� o  ���|�| 0 theattachment theAttachment	� �{	��z
�{ 
OSin	� m  ���y
�y boovfals�z  �~  �� 0 theattachment theAttachment	� o  ���x�x &0 theattachmentlist theAttachmentList	� n ��	�	�	� 1  ���w
�w 
FCno	�  g  ��	� 	��v	� r  ��	�	�	� m  ���u
�u boovfals	� o      �t�t &0 attachmentrequest attachmentRequest�v  � 	��s	� r  ��	�	�	� m  ���r
�r boovfals	� o      �q�q "0 completethetask completeTheTask�s  + 4  u{�p	�
�p 
FCft	� o  yz�o�o 0 i  �8 0 i  ( m  fg�n�n ) l gp	��m�l	� I gp�k	��j
�k .corecnte****       ****	� n gl	�	�	� 2 hl�i
�i 
FCft	�  g  gh�j  �m  �l  �7  & 	�	�	� r  ��	�	�	� n  ��	�	�	� 2  ���h
�h 
FCft	�  g  ��	� o      �g�g 0 tasklist taskList	� 	�	�	� Y  �	��f	�	�	�	� Z �	�	��e�d	� E  ��	�	�	� n  ��	�	�	� 1  ���c
�c 
FCno	� l ��	��b�a	� n  ��	�	�	� 4  ���`	�
�` 
cobj	� o  ���_�_ 0 i  	� o  ���^�^ 0 tasklist taskList�b  �a  	� m  ��	�	� �	�	�  ! ! ! D e l e t e	� I ��]	��\
�] .coredelonull���     obj 	� l � 	��[�Z	� n  � 	�	�	� 4  � �Y	�
�Y 
cobj	� o  ���X�X 0 i  	� o  ���W�W 0 tasklist taskList�[  �Z  �\  �e  �d  �f 0 i  	� l ��	��V�U	� n  ��	�	�	� 1  ���T
�T 
leng	� o  ���S�S 0 tasklist taskList�V  �U  	� m  ���R�R 	� m  ���Q�Q��	� 	�	�	� l �P�O�N�P  �O  �N  	� 	�	�	� l �M	�	��M  	� ) # Duplicating project multiple times   	� �	�	� F   D u p l i c a t i n g   p r o j e c t   m u l t i p l e   t i m e s	� 	�	�	� r  	�	�	� n  	�	�	� 1  �L
�L 
FCno	� o  �K�K 0 
theproject 
theProject	� o      �J�J 0 thenote theNote	� 	�	�	� r  	�
 	� m  �I�I��
  o      �H�H 0 
thecopynum 
theCopyNum	� 


 Y  ^
�G

�F
 Z  1Y

�E�D
 C  1=

	
 n  19




 4  49�C

�C 
cpar
 o  78�B�B 0 i  
 o  14�A�A 0 thenote theNote
	 m  9<

 �

 
 @ c o p y
 k  @U

 


 r  @E


 o  @A�@�@ 0 i  
 o      �?�? 0 
thecopynum 
theCopyNum
 


 s  FS


 n  FN


 4  IN�>

�> 
cpar
 o  LM�=�= 0 i  
 o  FI�<�< 0 thenote theNote
 o      �;�; $0 thecopyparagraph theCopyParagraph
 
�:
  S  TU�:  �E  �D  �G 0 i  
 m  !"�9�9 
 l ",
�8�7
 n  ",


 1  )+�6
�6 
leng
 n  ")

 
 2 %)�5
�5 
cpar
  o  "%�4�4 0 thenote theNote�8  �7  �F  
 
!
"
! l __�3�2�1�3  �2  �1  
" 
#
$
# Z  _
%
&�0�/
% ?  _d
'
(
' o  _b�.�. 0 
thecopynum 
theCopyNum
( m  bc�-�-��
& k  g
)
) 
*
+
* r  gr
,
-
, n  gn
.
/
. 2  jn�,
�, 
cpar
/ o  gj�+�+ 0 thenote theNote
- o      �*�* 0 theparagraphs theParagraphs
+ 
0
1
0 r  sy
2
3
2 J  su�)�)  
3 o      �(�( &0 cleanedparagraphs cleanedParagraphs
1 
4
5
4 Y  z�
6�'
7
8�&
6 Z  ��
9
:�%�$
9 > ��
;
<
; o  ���#�# 0 i  
< o  ���"�" 0 
thecopynum 
theCopyNum
: r  ��
=
>
= b  ��
?
@
? o  ���!�! &0 cleanedparagraphs cleanedParagraphs
@ n  ��
A
B
A 4  ��� 
C
�  
cobj
C o  ���� 0 i  
B o  ���� 0 theparagraphs theParagraphs
> o      �� &0 cleanedparagraphs cleanedParagraphs�%  �$  �' 0 i  
7 m  }~�� 
8 n  ~�
D
E
D 1  ���
� 
leng
E o  ~��� 0 theparagraphs theParagraphs�&  
5 
F
G
F r  ��
H
I
H o  ���
� 
ret 
I n     
J
K
J 1  ���
� 
txdl
K  f  ��
G 
L
M
L r  ��
N
O
N c  ��
P
Q
P o  ���� &0 cleanedparagraphs cleanedParagraphs
Q m  ���
� 
ctxt
O n      
R
S
R 1  ���
� 
FCno
S o  ���� 0 
theproject 
theProject
M 
T
U
T l ������  �  �  
U 
V
W
V r  ��
X
Y
X J  ��
Z
Z 
[
\
[ m  ��
]
] �
^
^  @ c o p y  
\ 
_
`
_ m  ��
a
a �
b
b 
 @ c o p y
` 
c�
c m  ��
d
d �
e
e   �  
Y n     
f
g
f 1  ���
� 
txdl
g  f  ��
W 
h
i
h r  ��
j
k
j n  ��
l
m
l 2  ���
� 
citm
m o  ���� $0 thecopyparagraph theCopyParagraph
k o      �� $0 thecopyparagraph theCopyParagraph
i 
n
o
n Y  �
p�
q
r�

p Z  �
s
t�	�
s > ��
u
v
u n  ��
w
x
w 4  ���
y
� 
cobj
y o  ���� 0 i  
x o  ���� $0 thecopyparagraph theCopyParagraph
v m  ��
z
z �
{
{  
t k  �
|
| 
}
~
} r  �	

�
 c  �
�
�
� l �
���
� n  �
�
�
� 4  ��
�
� 
cobj
� o  � �� 0 i  
� o  ��� �  $0 thecopyparagraph theCopyParagraph�  �  
� m  ��
�� 
nmbr
� o      ����  0 therepeatcount theRepeatCount
~ 
�
�
� I 
��
���
�� .ascrcmnt****      � ****
� o  
����  0 therepeatcount theRepeatCount��  
� 
���
�  S  ��  �	  �  � 0 i  
q m  ������ 
r n  ��
�
�
� 1  ����
�� 
leng
� o  ������ $0 thecopyparagraph theCopyParagraph�
  
o 
�
�
� l ��������  ��  ��  
� 
�
�
� l ��
�
���  
� - ' 1 less since first was already created   
� �
�
� N   1   l e s s   s i n c e   f i r s t   w a s   a l r e a d y   c r e a t e d
� 
���
� Y  
���
�
���
� k  +�
�
� 
�
�
� r  +4
�
�
� ]  +0
�
�
� o  +,���� 0 i  
� 1  ,/��
�� 
week
� o      ���� $0 theweekincrement theWeekIncrement
� 
�
�
� Z  5s
�
���
�
� = 5>
�
�
� o  5:���� (0 startorendoffolder startOrEndOfFolder
� m  :=
�
� �
�
� 
 s t a r t
� r  AZ
�
�
� l AV
�����
� I AV��
�
�
�� .coreclon****      � ****
� o  AB���� 0 
theproject 
theProject
� ��
���
�� 
insh
� l ER
�����
� n  ER
�
�
� 8 NR��
�� 
insl
� n  EN
�
�
� 2 JN��
�� 
FCpr
� l EJ
�����
� n  EJ
�
�
� 1  FJ��
�� 
ctnr
� o  EF���� 0 
theproject 
theProject��  ��  ��  ��  ��  ��  ��  
� o      ���� (0 newprojectinstance newProjectInstance��  
� r  ]s
�
�
� l ]o
�����
� I ]o��
�
�
�� .coreclon****      � ****
� o  ]^���� 0 
theproject 
theProject
� ��
���
�� 
insh
� l ak
�����
� n  ak
�
�
�  ;  jk
� n  aj
�
�
� 2 fj��
�� 
FCpr
� l af
�����
� n  af
�
�
� 1  bf��
�� 
ctnr
� o  ab���� 0 
theproject 
theProject��  ��  ��  ��  ��  ��  ��  
� o      ���� (0 newprojectinstance newProjectInstance
� 
���
� O  t�
�
�
� k  z�
�
� 
�
�
� Z  z�
�
�����
� > z
�
�
� n z}
�
�
� 1  {}��
�� 
FCDs
�  g  z{
� m  }~��
�� 
msng
� r  ��
�
�
� l ��
�����
� [  ��
�
�
� l ��
�����
� n ��
�
�
� 1  ����
�� 
FCDs
�  g  ����  ��  
� o  ������ $0 theweekincrement theWeekIncrement��  ��  
� n     
�
�
� 1  ����
�� 
FCDs
�  g  ����  ��  
� 
�
�
� Z  ��
�
�����
� > ��
�
�
� n ��
�
�
� 1  ����
�� 
FCDd
�  g  ��
� m  ����
�� 
msng
� r  ��
�
�
� l ��
�����
� [  ��
�
�
� l ��
�����
� n ��
�
�
� 1  ����
�� 
FCDd
�  g  ����  ��  
� o  ������ $0 theweekincrement theWeekIncrement��  ��  
� n     
�
�
� 1  ����
�� 
FCDd
�  g  ����  ��  
� 
�
�
� l ����������  ��  ��  
� 
���
� X  ��
���
�
� O  ��
�
�
� k  ��
�
� 
�
�
� Z  ��
�
�����
� > ��
�
�
� n ��
�
�
� 1  ����
�� 
FCDs
�  g  ��
� m  ����
�� 
msng
� r  ��
�
�
� l ��
�����
� [  ��
� 
� l ������ n �� 1  ����
�� 
FCDs  g  ����  ��    o  ������ $0 theweekincrement theWeekIncrement��  ��  
� n      1  ����
�� 
FCDs  g  ����  ��  
� �� Z  ������ > ��	
	 n �� 1  ����
�� 
FCDd  g  ��
 m  ����
�� 
msng r  �� l ������ [  �� l ������ n �� 1  ����
�� 
FCDd  g  ����  ��   o  ������ $0 theweekincrement theWeekIncrement��  ��   n      1  ����
�� 
FCDd  g  ����  ��  ��  
� o  ������ 0 thetask theTask�� 0 thetask theTask
� n  �� 2  ����
�� 
FCft  g  ����  
� o  tw���� (0 newprojectinstance newProjectInstance��  �� 0 i  
� m   !���� 
� l !&���� \  !& o  !$����  0 therepeatcount theRepeatCount m  $%���� ��  ��  ��  ��  �0  �/  
$  l ��������  ��  ��    l ��������  ��  ��    !  l ��������  ��  ��  ! "��" L  ## o  ���� &0 theattachmentlist theAttachmentList��  � o   / 0���� 0 
theproject 
theProject� 1   ) ,��
�� 
FCDo� m   % &$$�                                                                                  OFOC  alis    X  Macintosh HD               ͘L�H+   v<�OmniFocus.app                                                   ���ΞR        ����  	                Applications    ͗�.      Ν�     v<�  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  ��  s %&% l     ��������  ��  ��  & '(' l     ��������  ��  ��  ( )*) i   Z ]+,+ I      �-�~� $0 replacevariables replaceVariables- ./. o      �}�} 0 thetext theText/ 010 o      �|�| 0 thevariables theVariables1 2�{2 o      �z�z "0 thereplacements theReplacements�{  �~  , k     c33 454 Z    67�y�x6 =    898 n     :;: 1    �w
�w 
leng; o     �v�v 0 thevariables theVariables9 m    �u�u  7 L    
<< o    	�t�t 0 thetext theText�y  �x  5 =>= Y    `?�s@A�r? k    [BB CDC r    $EFE l    G�q�pG n     HIH 4     �oJ
�o 
cobjJ o    �n�n 0 i  I o    �m�m 0 thevariables theVariables�q  �p  F n     KLK 1   ! #�l
�l 
txdlL  f     !D MNM r   % *OPO n   % (QRQ 2   & (�k
�k 
citmR o   % &�j�j 0 thetext theTextP o      �i�i 0 thetext theTextN STS Z   + NUV�hWU =  + 3XYX n   + 1Z[Z m   / 1�g
�g 
pcls[ l  + /\�f�e\ n   + /]^] 4   , /�d_
�d 
cobj_ o   - .�c�c 0 i  ^ o   + ,�b�b "0 thereplacements theReplacements�f  �e  Y m   1 2�a
�a 
ldt V r   6 C`a` n  6 ?bcb I   7 ?�`d�_�` "0 customdatestyle customDateStyled e�^e n   7 ;fgf 4   8 ;�]h
�] 
cobjh o   9 :�\�\ 0 i  g o   7 8�[�[ "0 thereplacements theReplacements�^  �_  c  f   6 7a n     iji 1   @ B�Z
�Z 
txdlj  f   ? @�h  W r   F Nklk l  F Jm�Y�Xm n   F Jnon 4   G J�Wp
�W 
cobjp o   H I�V�V 0 i  o o   F G�U�U "0 thereplacements theReplacements�Y  �X  l n     qrq 1   K M�T
�T 
txdlr  f   J KT sts r   O Tuvu c   O Rwxw o   O P�S�S 0 thetext theTextx m   P Q�R
�R 
TEXTv o      �Q�Q 0 thetext theTextt y�Py r   U [z{z J   U W�O�O  { n     |}| 1   X Z�N
�N 
txdl}  f   W X�P  �s 0 i  @ m    �M�M A l   ~�L�K~ n    � 1    �J
�J 
leng� o    �I�I 0 thevariables theVariables�L  �K  �r  > ��H� L   a c�� o   a b�G�G 0 thetext theText�H  * ��� l     �F�E�D�F  �E  �D  � ��� l     �C�B�A�C  �B  �A  � ��� i   ^ a��� I      �@��?�@ (0 eliminatevariables eliminateVariables� ��>� o      �=�= 0 thenote theNote�>  �?  � Z     ����<�� =    	��� l    ��;�:� I    �9��8
�9 .corecnte****       ****� n     ��� 2   �7
�7 
cpar� o     �6�6 0 thenote theNote�8  �;  �:  � m    �5�5 � L    �� m    �� ���  �<  � k    ��� ��� Y    <��4���� Z   ! 7���3�2� C   ! +��� n   ! %��� 4   " %�1�
�1 
cpar� o   # $�0�0 0 i  � o   ! "�/�/ 0 thenote theNote� o   % *�.�.  0 variablesymbol variableSymbol� k   . 3�� ��� r   . 1��� o   . /�-�- 0 i  � o      �,�, $0 variableposition variablePosition� ��+�  S   2 3�+  �3  �2  �4 0 i  � l   ��*�)� I   �(��'
�( .corecnte****       ****� n    ��� 2   �&
�& 
cpar� o    �%�% 0 thenote theNote�'  �*  �)  � m    �$�$ � m    �#�#��� ��� r   = D��� J   = @�� ��"� o   = >�!
�! 
ret �"  � n     ��� 1   A C� 
�  
txdl�  f   @ A� ��� Z   E ������ =  E N��� o   E F�� $0 variableposition variablePosition� l  F M���� I  F M���
� .corecnte****       ****� l  F I���� n   F I��� 2  G I�
� 
cpar� o   F G�� 0 thenote theNote�  �  �  �  �  � r   Q `��� c   Q ^��� l  Q \���� n   Q \��� l  R \���� 7  R \���
� 
cpar� m   V X�� � m   Y [�����  �  � o   Q R�� 0 thenote theNote�  �  � m   \ ]�
� 
ctxt� o      �� 0 
returnnote 
returnNote� ��� =  c f��� o   c d�� $0 variableposition variablePosition� m   d e�� � ��
� r   i x��� c   i v��� l  i t��	�� l  i t���� n   i t��� 7  j t���
� 
cpar� m   n p�� � m   q s����� o   i j�� 0 thenote theNote�  �  �	  �  � m   t u�
� 
ctxt� o      � �  0 
returnnote 
returnNote�
  � r   { ���� c   { ���� l  { ������� b   { ���� l  { ������� n   { ���� 7  | �����
�� 
cpar� m   � ����� � l  � ������� \   � ���� o   � ����� $0 variableposition variablePosition� m   � ����� ��  ��  � o   { |���� 0 thenote theNote��  ��  � l  � ������� n   � ���� 7  � �����
�� 
cpar� l  � ������� [   � ���� o   � ����� $0 variableposition variablePosition� m   � ����� ��  ��  � m   � �������� o   � ����� 0 thenote theNote��  ��  ��  ��  � m   � ���
�� 
ctxt� o      ���� 0 
returnnote 
returnNote� ��� r   � ���� m   � ��� ���  � n     ��� 1   � ���
�� 
txdl�  f   � �� ���� L   � ��� o   � ����� 0 
returnnote 
returnNote��  �    l     ��������  ��  ��    l     ��������  ��  ��    i   b e I      ������ &0 workingthecontext workingTheContext 	
	 o      ���� 0 
thecontext 
theContext
  o      ���� 0 thevariables theVariables �� o      ���� "0 thereplacements theReplacements��  ��   O     � Z    ��� =    o    ���� 0 
thecontext 
theContext m    ��
�� 
msng L   
 ����  ��   k    �  r     m    ����  o      ���� 0 i    r     m    ��
�� boovfals o      ���� 0 variablefound variableFound  V    E !  k   ( @"" #$# Z  ( :%&����% l  ( 0'����' E   ( 0()( n   ( +*+* 1   ) +��
�� 
pnam+ o   ( )���� 0 
thecontext 
theContext) l  + /,����, n   + /-.- 4   , /��/
�� 
cobj/ o   - .���� 0 i  . o   + ,���� 0 thevariables theVariables��  ��  ��  ��  & r   3 6010 m   3 4��
�� boovtrue1 o      ���� 0 variablefound variableFound��  ��  $ 2��2 r   ; @343 [   ; >565 o   ; <���� 0 i  6 m   < =���� 4 o      ���� 0 i  ��  ! F    '787 l    9����9 B     :;: o    ���� 0 i  ; l   <����< n    =>= 1    ��
�� 
leng> o    ���� 0 thevariables theVariables��  ��  ��  ��  8 l  # %?����? H   # %@@ o   # $���� 0 variablefound variableFound��  ��   A��A Z   F �BC��DB H   F HEE o   F G���� 0 variablefound variableFoundC L   K MFF o   K L���� 0 
thecontext 
theContext��  D k   P �GG HIH r   P \JKJ n  P ZLML I   Q Z��N���� $0 replacevariables replaceVariablesN OPO n   Q TQRQ 1   R T��
�� 
pnamR o   Q R���� 0 
thecontext 
theContextP STS o   T U���� 0 thevariables theVariablesT U��U o   U V���� "0 thereplacements theReplacements��  ��  M  f   P QK o      ���� (0 desiredcontextname desiredContextNameI VWV Z   ] xXY��ZX l  ] d[����[ =  ] d\]\ n   ] b^_^ m   ` b��
�� 
pcls_ l  ] ``����` n   ] `aba 1   ^ `��
�� 
ctnrb o   ] ^���� 0 
thecontext 
theContext��  ��  ] m   b c��
�� 
docu��  ��  Y r   g ncdc n   g lefe 2   j l��
�� 
FCctf 1   g j��
�� 
FCDod o      ���� $0 contextsinfolder contextsInFolder��  Z r   q xghg n  q viji 2   t v��
�� 
FCctj l  q tk����k n   q tlml 1   r t��
�� 
ctnrm o   q r���� 0 
thecontext 
theContext��  ��  h o      ���� $0 contextsinfolder contextsInFolderW non l  y y��������  ��  ��  o pqp r   y |rsr m   y z��
�� 
nulls o      ���� "0 positionoffound positionOfFoundq tut r   } �vwv J   } ����  w o      ���� 20 namesofcontextsinfolder namesOfContextsInFolderu xyx Y   � �z��{|��z k   � �}} ~~ r   � ���� n   � ���� 1   � ���
�� 
pnam� l  � ������� n   � ���� 4   � ����
�� 
cobj� o   � ����� 0 i  � o   � ����� $0 contextsinfolder contextsInFolder��  ��  � n      ���  ;   � �� o   � ����� 20 namesofcontextsinfolder namesOfContextsInFolder ���� Z  � �������� =  � ���� l  � ������� n   � ���� 4   � ����
�� 
cobj� o   � ����� 0 i  � o   � ����� 20 namesofcontextsinfolder namesOfContextsInFolder��  ��  � o   � ����� (0 desiredcontextname desiredContextName� r   � ���� o   � ����� 0 i  � o      �� "0 positionoffound positionOfFound��  ��  ��  �� 0 i  { m   � ��~�~ | l  � ���}�|� n   � ���� 1   � ��{
�{ 
leng� o   � ��z�z $0 contextsinfolder contextsInFolder�}  �|  ��  y ��� l  � ��y�x�w�y  �x  �w  � ��v� Z   � ����u�� >  � ���� o   � ��t�t "0 positionoffound positionOfFound� m   � ��s
�s 
null� L   � ��� l  � ���r�q� n   � ���� 4   � ��p�
�p 
cobj� o   � ��o�o "0 positionoffound positionOfFound� o   � ��n�n $0 contextsinfolder contextsInFolder�r  �q  �u  � k   � ��� ��� r   � ���� l  � ���m�l� n   � ���� 1   � ��k
�k 
ctnr� o   � ��j�j 0 
thecontext 
theContext�m  �l  � o      �i�i 0 thecontainer theContainer� ��� O   � ���� r   � ���� I  � ��h�g�
�h .corecrel****      � null�g  � �f��
�f 
kocl� m   � ��e
�e 
FCct� �d��
�d 
insh� l  � ���c�b� n   � ����  ;   � �� n   � ���� 2  � ��a
�a 
FCct�  g   � ��c  �b  � �`��_
�` 
prdt� K   � ��� �^��]
�^ 
pnam� o   � ��\�\ (0 desiredcontextname desiredContextName�]  �_  � o      �[�[ 0 
newcontext 
newContext� o   � ��Z�Z 0 thecontainer theContainer� ��Y� L   � ��� o   � ��X�X 0 
newcontext 
newContext�Y  �v  ��   m     ���                                                                                  OFOC  alis    X  Macintosh HD               ͘L�H+   v<�OmniFocus.app                                                   ���ΞR        ����  	                Applications    ͗�.      Ν�     v<�  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��   ��� l     �W�V�U�W  �V  �U  � ��� l     �T�S�R�T  �S  �R  � ��� i   f i��� I      �Q��P�Q $0 findthevariables findTheVariables� ��O� o      �N�N 0 
theproject 
theProject�O  �P  � k    ��� ��� O    ���� O   ���� k   
��� ��� r   
 ��� n   
 ��� 1    �M
�M 
FCno� o   
 �L�L 0 
theproject 
theProject� o      �K�K 0 thefullnote theFullNote� ��� Z   !���J�I� =   ��� o    �H�H 0 thefullnote theFullNote� m    �G
�G 
msng� L    �� J    �� ��� J    �F�F  � ��E� J    �D�D  �E  �J  �I  � ��� r   " %��� m   " #�C
�C 
null� o      �B�B 0 thenote theNote� ��� Y   & T��A���� Z   6 O���@�?� C   6 @��� n   6 :��� 4   7 :�>�
�> 
cpar� o   8 9�=�= 0 i  � o   6 7�<�< 0 thefullnote theFullNote� o   : ?�;�;  0 variablesymbol variableSymbol� k   C K�� ��� r   C I��� n   C G��� 4   D G�:�
�: 
cpar� o   E F�9�9 0 i  � o   C D�8�8 0 thefullnote theFullNote� o      �7�7 0 thenote theNote� ��6�  S   J K�6  �@  �?  �A 0 i  � l  ) 0 �5�4  I  ) 0�3�2
�3 .corecnte****       **** n   ) , 2  * ,�1
�1 
cpar o   ) *�0�0 0 thefullnote theFullNote�2  �5  �4  � m   0 1�/�/ � m   1 2�.�.���  Z  U f�-�, =  U X	 o   U V�+�+ 0 thenote theNote	 m   V W�*
�* 
null L   [ b

 J   [ a  J   [ ]�)�)   �( J   ] _�'�'  �(  �-  �,    r   g k J   g i�&�&   o      �%�% $0 cleanedvariables cleanedVariables  r   l ~ J   l z  b   l s m   l m �    o   m r�$�$  0 variablesymbol variableSymbol �# o   s x�"�"  0 variablesymbol variableSymbol�#   n       1   { }�!
�! 
txdl   f   z { !"! r    �#$# n    �%&% 2   � �� 
�  
citm& o    ��� 0 thenote theNote$ o      �� 0 thevariables theVariables" '(' l  � �����  �  �  ( )*) Y   � �+�,-�+ Z   � �./��. >  � �010 n   � �232 4   � ��4
� 
cobj4 o   � ��� 0 thevar theVar3 o   � ��� 0 thevariables theVariables1 m   � �55 �66  / r   � �787 n   � �9:9 4   � ��;
� 
cobj; o   � ��� 0 thevar theVar: o   � ��� 0 thevariables theVariables8 l     <��< n      =>=  ;   � �> o   � ��� $0 cleanedvariables cleanedVariables�  �  �  �  � 0 thevar theVar, m   � ��� - l  � �?��? n   � �@A@ 1   � ��

�
 
lengA o   � ��	�	 0 thevariables theVariables�  �  �  * BCB l  � �����  �  �  C DED r   � �FGF J   � ���  G o      �� 0 optionlists optionListsE HIH Y   ��J�KL�J Z   ��MN�OM F   � �PQP l  � �R� ��R E   � �STS n   � �UVU 4   � ���W
�� 
cobjW o   � ����� 0 i  V o   � ����� $0 cleanedvariables cleanedVariablesT o   � ����� 40 optionliststartdelimiter optionListStartDelimiter�   ��  Q l  � �X����X E   � �YZY n   � �[\[ 4   � ���]
�� 
cobj] o   � ����� 0 i  \ o   � ����� $0 cleanedvariables cleanedVariablesZ o   � ����� 00 optionlistenddelimiter optionListEndDelimiter��  ��  N k   ��^^ _`_ r   �
aba J   �cc ded b   � �fgf b   � �hih 1   � ���
�� 
spaci o   � ����� 40 optionliststartdelimiter optionListStartDelimiterg 1   � ���
�� 
space jkj b   � �lml b   � �non 1   � ���
�� 
spaco o   � ����� 00 optionlistenddelimiter optionListEndDelimiterm 1   � ���
�� 
spack pqp b   � �rsr 1   � ���
�� 
spacs o   � ����� 40 optionliststartdelimiter optionListStartDelimiterq tut b   � �vwv 1   � ���
�� 
spacw o   � ����� 00 optionlistenddelimiter optionListEndDelimiteru xyx o   � ����� 40 optionliststartdelimiter optionListStartDelimitery z��z o   ����� 00 optionlistenddelimiter optionListEndDelimiter��  b n     {|{ 1  	��
�� 
txdl|  f  ` }~} r  � n  ��� 2  ��
�� 
citm� l ������ n  ��� 4  ���
�� 
cobj� o  ���� 0 i  � o  ���� $0 cleanedvariables cleanedVariables��  ��  � o      ���� 0 thesplit theSplit~ ��� r  ��� l ������ n  ��� 4  ���
�� 
cobj� m  ���� � o  ���� 0 thesplit theSplit��  ��  � l     ������ n      ��� 4  ���
�� 
cobj� o  ���� 0 i  � o  ���� $0 cleanedvariables cleanedVariables��  ��  � ��� r  $��� n  "��� 4  "���
�� 
cobj� m   !���� � o  ���� 0 thesplit theSplit� o      ���� &0 newoptionlisttext newOptionListText� ��� r  %1��� J  %-�� ��� m  %(�� ���  ,  � ���� m  (+�� ���  ,��  � n     ��� 1  .0��
�� 
txdl�  f  -.� ��� r  27��� n  25��� 2  35��
�� 
citm� o  23���� &0 newoptionlisttext newOptionListText� o      ���� 0 newoptionlist newOptionList� ��� r  8;��� m  89��
�� boovtrue� o      ���� 0 
emptyfound 
emptyFound� ��� V  <���� Y  B��������� k  O��� ��� r  OR��� m  OP��
�� boovfals� o      ���� 0 
emptyfound 
emptyFound� ���� Z  S�������� = S[��� n  SW��� 4  TW���
�� 
cobj� o  UV���� 0 j  � o  ST���� 0 newoptionlist newOptionList� m  WZ�� ���  � k  ^��� ��� Z  ^������ = ^a��� o  ^_���� 0 j  � m  _`���� � r  dq��� n  do��� 7 eo����
�� 
cobj� m  ik���� � m  ln������� o  de���� 0 newoptionlist newOptionList� o      ���� 0 newoptionlist newOptionList� ��� = ty��� o  tu���� 0 j  � n  ux��� 1  vx��
�� 
leng� o  uv���� 0 newoptionlist newOptionList� ���� r  |���� n  |���� 7 }�����
�� 
cobj� m  ������ � m  ��������� o  |}���� 0 newoptionlist newOptionList� o      ���� 0 newoptionlist newOptionList��  � r  ����� b  ����� l �������� n  ����� 7 ������
�� 
cobj� m  ������ � l �������� \  ����� o  ������ 0 j  � m  ������ ��  ��  � o  ������ 0 newoptionlist newOptionList��  ��  � l �������� n  ����� 7 ������
�� 
cobj� l �������� [  ����� o  ������ 0 j  � m  ������ ��  ��  � m  ��������� o  ������ 0 newoptionlist newOptionList��  ��  � o      ���� 0 newoptionlist newOptionList� ��� r  ����� m  ����
�� boovtrue� o      ���� 0 
emptyfound 
emptyFound� ����  S  ����  ��  ��  ��  �� 0 j  � m  EF���� � n  FJ��� 1  GI��
�� 
leng� o  FG���� 0 newoptionlist newOptionList��  � o  @A���� 0 
emptyfound 
emptyFound� ���� r  ��   o  ������ 0 newoptionlist newOptionList n        ;  �� o  ������ 0 optionlists optionLists��  �  O r  �� J  ������   n        ;  �� o  ������ 0 optionlists optionLists� 0 i  K m   � ����� L n   � �	 1   � ���
�� 
leng	 o   � ����� $0 cleanedvariables cleanedVariables�  I 

 r  �� J  ������   n      1  ����
�� 
txdl  f  �� �� l ����������  ��  ��  ��  � 1    ��
�� 
FCDo� m     �                                                                                  OFOC  alis    X  Macintosh HD               ͘L�H+   v<�OmniFocus.app                                                   ���ΞR        ����  	                Applications    ͗�.      Ν�     v<�  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � �� L  �� J  ��  o  ������ $0 cleanedvariables cleanedVariables �� o  ������ 0 optionlists optionLists��  ��  �  l     ��������  ��  ��    l     ����~��  �  �~    i   j m I      �} �|�} *0 findthereplacements findTheReplacements  !"! o      �{�{ 0 thevariables theVariables" #�z# o      �y�y 0 optionlists optionLists�z  �|   k    	$$ %&% O    '(' O   )*) k   
++ ,-, r   
 ./. J   
 �x�x  / o      �w�w "0 thereplacements theReplacements- 010 r    232 m    44 �55 B S e l e c t   R e p l a c e m e n t s   f o r   V a r i a b l e s3 o      �v�v 0 thetitle theTitle1 6�u6 Y   7�t89�s7 k     �:: ;<; Z     s=>?@= E     &ABA n     $CDC 4   ! $�rE
�r 
cobjE o   " #�q�q 0 i  D o     !�p�p 0 thevariables theVariablesB m   $ %FF �GG 
 t o d a y> r   ) 1HIH l  ) .J�o�nJ I  ) .�m�l�k
�m .misccurdldt    ��� null�l  �k  �o  �n  I l     K�j�iK n      LML  ;   / 0M o   . /�h�h "0 thereplacements theReplacements�j  �i  ? NON C   4 :PQP n   4 8RSR 4   5 8�gT
�g 
cobjT o   6 7�f�f 0 i  S o   4 5�e�e 0 thevariables theVariablesQ m   8 9UU �VV  d a t eO WXW r   = KYZY b   = I[\[ b   = G]^] b   = E_`_ b   = @aba m   = >cc �dd l W h a t   d a t e   w o u l d   y o u   l i k e   t o   u s e   f o r   t h e   d a t e   v a r i a b l e  b 1   > ?�d
�d 
quot` l  @ De�c�be n   @ Dfgf 4   A D�ah
�a 
cobjh o   B C�`�` 0 i  g o   @ A�_�_ 0 thevariables theVariables�c  �b  ^ 1   E F�^
�^ 
quot\ m   G Hii �jj V ?   Y o u   c a n   u s e   a n   a b s o l u t e   o r   r e l a t i v e   d a t e .Z o      �]�] 0 thetext theTextX klk >  N Umnm n   N Ropo 4   O R�\q
�\ 
cobjq o   P Q�[�[ 0 i  p o   N O�Z�Z 0 optionlists optionListsn J   R T�Y�Y  l r�Xr r   X bsts b   X `uvu b   X ^wxw m   X Yyy �zz � W h i c h   o f   t h e   f o l l o w i n g   o p t i o n s   w o u l d   y o u   l i k e   t o   a s s i g n   t o   t h e   v a r i a b l e   "x l  Y ]{�W�V{ n   Y ]|}| 4   Z ]�U~
�U 
cobj~ o   [ \�T�T 0 i  } o   Y Z�S�S 0 thevariables theVariables�W  �V  v m   ^ _ ���  " ?t o      �R�R 0 thetext theText�X  @ r   e s��� b   e q��� b   e o��� b   e m��� b   e h��� m   e f�� ��� > W h a t   w o u l d   y o u   l i k e   t o   r e p l a c e  � 1   f g�Q
�Q 
quot� l  h l��P�O� n   h l��� 4   i l�N�
�N 
cobj� o   j k�M�M 0 i  � o   h i�L�L 0 thevariables theVariables�P  �O  � 1   m n�K
�K 
quot� m   o p�� ���    w i t h ?� o      �J�J 0 thetext theText< ��I� Z   t ����H�G� H   t {�� E   t z��� n   t x��� 4   u x�F�
�F 
cobj� o   v w�E�E 0 i  � o   t u�D�D 0 thevariables theVariables� m   x y�� ��� 
 t o d a y� Q   ~ ����� Z   � ����C�� =  � ���� n   � ���� 4   � ��B�
�B 
cobj� o   � ��A�A 0 i  � o   � ��@�@ 0 optionlists optionLists� J   � ��?�?  � k   � ��� ��� r   � ���� n   � ���� 1   � ��>
�> 
ttxt� l  � ���=�<� I  � ��;��
�; .sysodlogaskr        TEXT� o   � ��:�: 0 thetext theText� �9��8
�9 
dtxt� m   � ��� ���  �8  �=  �<  � o      �7�7  0 thereturninput theReturnInput� ��� Z   � ����6�5� C   � ���� n   � ���� 4   � ��4�
�4 
cobj� o   � ��3�3 0 i  � o   � ��2�2 0 thevariables theVariables� m   � ��� ���  d a t e� k   � ��� ��� r   � ���� n  � ���� I   � ��1��0�1 0 englishtime englishTime� ��/� o   � ��.�.  0 thereturninput theReturnInput�/  �0  �  f   � �� o      �-�-  0 thereturninput theReturnInput� ��� r   � ���� l  � ���,�+� I  � ��*�)�(
�* .misccurdldt    ��� null�)  �(  �,  �+  � o      �'�'  0 thecurrentdate theCurrentDate� ��� r   � ���� m   � ��&�&  � n      ��� 1   � ��%
�% 
time� o   � ��$�$  0 thecurrentdate theCurrentDate� ��#� r   � ���� [   � ���� o   � ��"�"  0 thecurrentdate theCurrentDate� o   � ��!�!  0 thereturninput theReturnInput� o      � �   0 thereturninput theReturnInput�#  �6  �5  � ��� r   � ���� o   � ���  0 thereturninput theReturnInput� l     ���� n      ���  ;   � �� o   � ��� "0 thereplacements theReplacements�  �  �  �C  � r   � ���� c   � ���� l  � ����� I  � ����
� .gtqpchltns    @   @ ns  � l  � ����� n   � ���� 4   � ���
� 
cobj� o   � ��� 0 i  � o   � ��� 0 optionlists optionLists�  �  � ���
� 
prmp� o   � ��� 0 thetext theText�  �  �  � m   � ��
� 
TEXT� l     ���� n      ���  ;   � �� o   � ��� "0 thereplacements theReplacements�  �  � R      ���
� .ascrerr ****      � ****� o      �
�
 0 	errortext 	errorText� �	��
�	 
errn� o      �� 0 errornumber errorNumber�  � Z   � ������ =  � ���� o   � ��� 0 errornumber errorNumber� m   � ������ L   � ��� m   � ��
� boovfals�  �  �H  �G  �I  �t 0 i  8 m    �� 9 l   �� ��� n    ��� 1    ��
�� 
leng� o    ���� 0 thevariables theVariables�   ��  �s  �u  * 1    ��
�� 
FCDo( m     ���                                                                                  OFOC  alis    X  Macintosh HD               ͘L�H+   v<�OmniFocus.app                                                   ���ΞR        ����  	                Applications    ͗�.      Ν�     v<�  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  & ���� L  	�� o  ���� "0 thereplacements theReplacements��   ��� l     ��������  ��  ��  � � � l     ��������  ��  ��     i   n q I      ������ &0 cleanexcessbreaks cleanExcessBreaks �� o      ���� 0 thetext theText��  ��   k     � 	 Z    
����
 =     o     ���� 0 thetext theText m    ��
�� 
msng L     m    ��
�� 
msng��  ��  	  Z   ���� =    o    ���� 0 thetext theText m     �   L     m     �  ��  ��    Z   ,���� =   # l   ! ����  I   !��!��
�� .corecnte****       ****! n    "#" 2   ��
�� 
cpar# o    ���� 0 thetext theText��  ��  ��   m   ! "����  L   & ($$ o   & '���� 0 thetext theText��  ��   %&% Y   - T'��()*' Z   = O+,����+ >  = C-.- n   = A/0/ 4   > A��1
�� 
cpar1 o   ? @���� 0 i  0 o   = >���� 0 thetext theText. m   A B22 �33  , k   F K44 565 r   F I787 o   F G���� 0 i  8 o      ���� 0 textends textEnds6 9��9  S   J K��  ��  ��  �� 0 i  ( l  0 7:����: I  0 7��;��
�� .corecnte****       ****; n   0 3<=< 2  1 3��
�� 
cpar= o   0 1���� 0 thetext theText��  ��  ��  ) m   7 8���� * m   8 9������& >?> Y   U |@��AB��@ Z   e wCD����C >  e kEFE n   e iGHG 4   f i��I
�� 
cparI o   g h���� 0 j  H o   e f���� 0 thetext theTextF m   i jJJ �KK  D k   n sLL MNM r   n qOPO o   n o���� 0 j  P o      ���� 0 
textstarts 
textStartsN Q��Q  S   r s��  ��  ��  �� 0 j  A m   X Y���� B l  Y `R����R I  Y `��S��
�� .corecnte****       ****S n   Y \TUT 2  Z \��
�� 
cparU o   Y Z���� 0 thetext theText��  ��  ��  ��  ? VWV r   } �XYX J   } �ZZ [��[ o   } ~��
�� 
ret ��  Y 1   � ���
�� 
txdlW \]\ r   � �^_^ c   � �`a` n   � �bcb 7  � ���de
�� 
cpard o   � ����� 0 
textstarts 
textStartse o   � ����� 0 textends textEndsc o   � ����� 0 thetext theTexta m   � ���
�� 
ctxt_ o      ���� 0 
thenewtext 
theNewText] fgf r   � �hih m   � �jj �kk  i 1   � ���
�� 
txdlg l��l L   � �mm o   � ����� 0 
thenewtext 
theNewText��   non l     ��������  ��  ��  o pqp l     ��������  ��  ��  q rsr i   r utut I      �������� .0 checkforothertemplate checkForOtherTemplate��  ��  u k    �vv wxw O    �yzy O   �{|{ k   
�}} ~~ r   
  ��� l  
 ������ I  
 �����
�� .corecnte****       ****� l  
 ������ 6 
 ��� 2   
 ��
�� 
FCff� l   ������ E    ��� n   ��� 1    ��
�� 
pnam�  g    � o    ���� .0 defaulttemplatefolder defaultTemplateFolder��  ��  ��  ��  ��  ��  ��  � o      ���� 0 thecount theCount ��� Z   ! ������� l  ! $������ =  ! $��� o   ! "���� 0 thecount theCount� m   " #����  ��  ��  � k   ' ��� ��� r   ' ,��� 2   ' *��
�� 
FCff� o      ���� (0 templatefolderlist templateFolderList� ��� r   - 1��� J   - /����  � o      ���� 00 templatefoldernamelist templateFolderNameList� ��� X   2 i����� k   B d�� ��� r   B E��� m   B C�� ���  � o      ���� 0 nextlistitem nextListItem� ��� Z  F W������� =  F M��� l  F K������ n   F K��� m   I K��
�� 
pcls� n  F I��� 1   G I��
�� 
ctnr� o   F G���� 0 	thefolder 	theFolder��  ��  � m   K L��
�� 
FCAr� r   P S��� m   P Q�� ��� !�  � o      ���� 0 nextlistitem nextListItem��  ��  � ��� r   X _��� b   X ]��� o   X Y���� 0 nextlistitem nextListItem� l  Y \������ n   Y \��� 1   Z \��
�� 
pnam� o   Y Z���� 0 	thefolder 	theFolder��  ��  � o      ���� 0 nextlistitem nextListItem� ���� r   ` d��� o   ` a�� 0 nextlistitem nextListItem� l     ��~�}� n      ���  ;   b c� o   a b�|�| 00 templatefoldernamelist templateFolderNameList�~  �}  ��  �� 0 	thefolder 	theFolder� o   5 6�{�{ (0 templatefolderlist templateFolderList� ��� r   j ���� I  j ��z��
�z .gtqpchltns    @   @ ns  � o   j k�y�y 00 templatefoldernamelist templateFolderNameList� �x��
�x 
appr� m   l m�� ��� 2 C h o o s e   T e m p l a t e   F o l d e r ( s )� �w��
�w 
prmp� m   n q�� ��� � N o   o b v i o u s   t e m p l a t e   f o l d e r s   w e r e   f o u n d .   P l e a s e   s e l e c t   t h e   f o l d e r ( s )   i n   w h i c h   y o u   s t o r e   t e m p l a t e s .� �v��
�v 
okbt� m   t w�� ��� , S e t   a s   T e m p l a t e   F o l d e r� �u��t
�u 
mlsl� m   z {�s
�s boovtrue�t  � o      �r�r 00 selectedtemplatefolder selectedTemplateFolder� ��� Z  � ����q�p� =  � ���� o   � ��o�o 00 selectedtemplatefolder selectedTemplateFolder� m   � ��n
�n boovfals� L   � ��� m   � ��m�m���q  �p  � ��� r   � ���� n  � ���� I   � ��l��k�l (0 selectionpositions selectionPositions� ��� o   � ��j�j 00 selectedtemplatefolder selectedTemplateFolder� ��� o   � ��i�i 00 templatefoldernamelist templateFolderNameList� ��h� m   � ��g
�g boovtrue�h  �k  �  f   � �� o      �f�f 00 templatefolderposition templateFolderPosition� ��� r   � ���� J   � ��e�e  � o      �d�d 20 existingtemplatefolders existingTemplateFolders� ��c� Y   � ���b���a� r   � ���� n   � ���� 4   � ��`�
�` 
cobj� o   � ��_�_ 0 i  � o   � ��^�^ (0 templatefolderlist templateFolderList� l     ��]�\� n      ���  ;   � �� o   � ��[�[ 20 existingtemplatefolders existingTemplateFolders�]  �\  �b 0 i  � m   � ��Z�Z � l  � ���Y�X� n   � ���� 1   � ��W
�W 
leng� o   � ��V�V 00 templatefolderposition templateFolderPosition�Y  �X  �a  �c  ��  � r   � �� � 6 � � 2   � ��U
�U 
FCff l  � ��T�S E   � � n  � � 1   � ��R
�R 
pnam  g   � � o   � ��Q�Q .0 defaulttemplatefolder defaultTemplateFolder�T  �S    o      �P�P 20 existingtemplatefolders existingTemplateFolders� 	 l  � ��O�N�M�O  �N  �M  	 

 r   � � J   � ��L�L   o      �K�K *0 oldtemplateprojects oldTemplateProjects  r   � � J   � ��J�J   o      �I�I 40 possibletemplateprojects possibleTemplateProjects  Y   �e�H�G k   �`  r   � � l  � ��F�E =  � � n   � �  1   � ��D
�D 
FCHi  n   � �!"! 4   � ��C#
�C 
cobj# o   � ��B�B 0 i  " o   � ��A�A 20 existingtemplatefolders existingTemplateFolders m   � ��@
�@ boovtrue�F  �E   o      �?�? 20 templatefolderisdropped templateFolderIsDropped $�>$ Q   �`%&�=% Z   �W'(�<)' H   � �** o   � ��;�; 20 templatefolderisdropped templateFolderIsDropped( r   1+,+ b   /-.- o   �:�: 40 possibletemplateprojects possibleTemplateProjects. l ./�9�8/ 6.010 2  �7
�7 
FCfx1 F  -232 F   454 l 	6�6�56 = 	787 n 
9:9 1  
�4
�4 
ctnr:  g  

8 l ;�3�2; n  <=< 4  �1>
�1 
cobj> o  �0�0 0 i  = o  �/�/ 20 existingtemplatefolders existingTemplateFolders�3  �2  �6  �5  5 l ?�.�-? > @A@ n BCB 1  �,
�, 
FCPsC  g  A m  �+
�+ FCPsFCPD�.  �-  3 l !,D�*�)D > !,EFE n "&GHG 1  "&�(
�( 
FCPsH  g  ""F m  '+�'
�' FCPsFCPd�*  �)  �9  �8  , o      �&�& 40 possibletemplateprojects possibleTemplateProjects�<  ) r  4WIJI b  4UKLK o  45�%�% 40 possibletemplateprojects possibleTemplateProjectsL l 5TM�$�#M 65TNON 2  5:�"
�" 
FCfxO F  ;SPQP l <FR�!� R = <FSTS n =?UVU 1  =?�
� 
ctnrV  g  ==T l @EW��W n  @EXYX 4  BE�Z
� 
cobjZ o  CD�� 0 i  Y o  @B�� 20 existingtemplatefolders existingTemplateFolders�  �  �!  �   Q l GR[��[ > GR\]\ n HL^_^ 1  HL�
� 
FCPs_  g  HH] m  MQ�
� FCPsFCPd�  �  �$  �#  J o      �� 40 possibletemplateprojects possibleTemplateProjects& R      ���
� .ascrerr ****      � ****�  �  �=  �>  �H 0 i   m   � ���  l  � �`��` n   � �aba 1   � ��
� 
lengb o   � ��� 20 existingtemplatefolders existingTemplateFolders�  �  �G   c�c Y  f�d�ef�
d Z u�gh�	�g E  u�iji l u}k��k n  u}lml 1  y}�
� 
FCnom l uyn��n n  uyopo 4  vy�q
� 
cobjq o  wx�� 0 i  p o  uv� �  40 possibletemplateprojects possibleTemplateProjects�  �  �  �  j m  }�rr �ss  �h r  ��tut l ��v����v n  ��wxw 4  ����y
�� 
cobjy o  ������ 0 i  x o  ������ 40 possibletemplateprojects possibleTemplateProjects��  ��  u l     z����z n      {|{  ;  ��| o  ������ *0 oldtemplateprojects oldTemplateProjects��  ��  �	  �  � 0 i  e m  ij���� f l jp}����} n  jp~~ 1  ko��
�� 
leng o  jk���� 40 possibletemplateprojects possibleTemplateProjects��  ��  �
  �  | 1    ��
�� 
FCDoz m     ���                                                                                  OFOC  alis    X  Macintosh HD               ͘L�H+   v<�OmniFocus.app                                                   ���ΞR        ����  	                Applications    ͗�.      Ν�     v<�  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  x ���� L  ���� o  ������ *0 oldtemplateprojects oldTemplateProjects��  s ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� i   v y��� I      ������� 20 adjustoldtemplatesyntax adjustOldTemplateSyntax� ���� o      ���� *0 oldtemplateprojects oldTemplateProjects��  ��  � O    ��� O   ��� k   
�� ��� Y   
 ��������� O    ���� k    ��� ��� r    #��� m    �� ���  �� n     ��� 1     "��
�� 
txdl�  f     � ��� r   $ )��� n  $ '��� 1   % '��
�� 
pnam�  g   $ %� o      ���� 0 tempname tempName� ��� r   * /��� l  * -������ n   * -��� 2   + -��
�� 
citm� o   * +���� 0 tempname tempName��  ��  � o      ���� 0 tempname tempName� ��� r   0 5��� n  0 3��� 1   1 3��
�� 
FCno�  g   0 1� o      ���� 0 tempnote tempNote� ��� r   6 ;��� l  6 9������ n   6 9��� 2   7 9��
�� 
citm� o   6 7���� 0 tempnote tempNote��  ��  � o      ���� 0 tempnote tempNote� ��� r   < E��� o   < A����  0 variablesymbol variableSymbol� n     ��� 1   B D��
�� 
txdl�  f   A B� ��� r   F K��� c   F I��� o   F G���� 0 tempname tempName� m   G H��
�� 
TEXT� o      ���� 0 tempname tempName� ��� r   L Q��� c   L O��� o   L M���� 0 tempnote tempNote� m   M N��
�� 
TEXT� o      ���� 0 tempnote tempNote� ��� r   R W��� m   R S�� ���  �� n     ��� 1   T V��
�� 
txdl�  f   S T� ��� r   X ]��� l  X [������ n   X [��� 2   Y [��
�� 
citm� o   X Y���� 0 tempname tempName��  ��  � o      ���� 0 tempname tempName� ��� r   ^ c��� l  ^ a������ n   ^ a��� 2   _ a��
�� 
citm� o   ^ _���� 0 tempnote tempNote��  ��  � o      ���� 0 tempnote tempNote� ��� r   d i��� m   d e�� ���  � n     ��� 1   f h��
�� 
txdl�  f   e f� ��� r   j q��� c   j m��� o   j k���� 0 tempname tempName� m   k l��
�� 
TEXT� n     ��� 1   n p��
�� 
pnam�  g   m n� ��� r   r y��� c   r u��� o   r s���� 0 tempnote tempNote� m   s t��
�� 
TEXT� n     ��� 1   v x��
�� 
FCno�  g   u v� ���� Y   z ��������� O   � �   k   � �  r   � � m   � � �  � n     	
	 1   � ���
�� 
txdl
  f   � �  r   � � n  � � 1   � ���
�� 
pnam  g   � � o      ���� 0 tempname tempName  r   � � l  � ����� n   � � 2   � ���
�� 
citm o   � ����� 0 tempname tempName��  ��   o      ���� 0 tempname tempName  r   � � n  � � 1   � ���
�� 
FCno  g   � � o      ���� 0 tempnote tempNote  r   � � !  l  � �"����" n   � �#$# 2   � ���
�� 
citm$ o   � ����� 0 tempnote tempNote��  ��  ! o      ���� 0 tempnote tempNote %&% r   � �'(' o   � �����  0 variablesymbol variableSymbol( n     )*) 1   � ���
�� 
txdl*  f   � �& +,+ r   � �-.- c   � �/0/ o   � ����� 0 tempname tempName0 m   � ���
�� 
TEXT. o      ���� 0 tempname tempName, 121 r   � �343 c   � �565 o   � ����� 0 tempnote tempNote6 m   � ���
�� 
TEXT4 o      ���� 0 tempnote tempNote2 787 r   � �9:9 m   � �;; �<<  �: n     =>= 1   � ���
�� 
txdl>  f   � �8 ?@? r   � �ABA l  � �C����C n   � �DED 2   � ���
�� 
citmE o   � ����� 0 tempname tempName��  ��  B o      ���� 0 tempname tempName@ FGF r   � �HIH l  � �J����J n   � �KLK 2   � ���
�� 
citmL o   � ����� 0 tempnote tempNote��  ��  I o      ���� 0 tempnote tempNoteG MNM r   � �OPO m   � �QQ �RR  P n     STS 1   � ���
�� 
txdlT  f   � �N UVU r   � �WXW c   � �YZY o   � ����� 0 tempname tempNameZ m   � ���
�� 
TEXTX n     [\[ 1   � ���
�� 
pnam\  g   � �V ]��] r   � �^_^ c   � �`a` o   � ����� 0 tempnote tempNotea m   � ���
�� 
TEXT_ n     bcb 1   � ���
�� 
FCnoc  g   � ���   4   � ���d
�� 
FCftd o   � ����� 0 i  �� 0 i  � m   } ~���� � l  ~ �e����e I  ~ ���f��
�� .corecnte****       ****f n  ~ �ghg 2   ���
�� 
FCfth  g   ~ ��  ��  ��  ��  ��  � n    iji 4    ��k
�� 
cobjk o    ���� 0 i  j o    ���� *0 oldtemplateprojects oldTemplateProjects�� 0 i  � m    ���� � l   l����l n    mnm 1    �
� 
lengn o    �~�~ *0 oldtemplateprojects oldTemplateProjects��  ��  ��  � o�}o r   �pqp m   � �rr �ss  q n     tut 1   ��|
�| 
txdlu  f   � ��}  � 1    �{
�{ 
FCDo� m     vv�                                                                                  OFOC  alis    X  Macintosh HD               ͘L�H+   v<�OmniFocus.app                                                   ���ΞR        ����  	                Applications    ͗�.      Ν�     v<�  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � wxw l     �z�y�x�z  �y  �x  x yzy l     �w�v�u�w  �v  �u  z {|{ i   z }}~} I      �t�s�t 80 checkingfordateinformation checkingForDateInformation ��� o      �r�r 0 theitem theItem� ��� o      �q�q 0 thevariables theVariables� ��p� o      �o�o "0 thereplacements theReplacements�p  �s  ~ O    ���� O   ���� O   
���� O   ���� k   ��� ��� r    ��� l   ��n�m� n    ��� 1    �l
�l 
FCno� o    �k�k 0 theitem theItem�n  �m  � o      �j�j 0 thenote theNote� ��� s    !��� o    �i�i 0 thenote theNote� o      �h�h "0 theoriginalnote theOriginalNote� ��� l  " "�g�f�e�g  �f  �e  � ��� r   " %��� m   " #�d
�d 
null� o      �c�c 0 
dueorstart 
dueOrStart� ��� r   & )��� m   & '�b
�b boovfals� o      �a�a 0 
askfordate 
askForDate� ��� r   * -��� m   * +�`
�` boovfals� o      �_�_ &0 relativetoproject relativeToProject� ��� r   . 1��� m   . /�^
�^ boovfals� o      �]�] 0 datevariable dateVariable� ��� l  2 2�\�[�Z�\  �[  �Z  � ��� r   2 7��� n   2 5��� 2   3 5�Y
�Y 
cpar� o   2 3�X�X 0 thenote theNote� o      �W�W &0 thenoteparagraphs theNoteParagraphs� ��� Y   8 j��V���U� Z   E e���T�S� G   E V��� l  E K��R�Q� C   E K��� n   E I��� 4   F I�P�
�P 
cobj� o   G H�O�O 0 i  � o   E F�N�N &0 thenoteparagraphs theNoteParagraphs� m   I J�� ���  s t a r t :�R  �Q  � l  N T��M�L� C   N T��� n   N R��� 4   O R�K�
�K 
cobj� o   P Q�J�J 0 i  � o   N O�I�I &0 thenoteparagraphs theNoteParagraphs� m   R S�� ���  d u e :�M  �L  � k   Y a�� ��� r   Y _��� n   Y ]��� 4   Z ]�H�
�H 
cobj� o   [ \�G�G 0 i  � o   Y Z�F�F &0 thenoteparagraphs theNoteParagraphs� o      �E�E 0 thenote theNote� ��D�  S   ` a�D  �T  �S  �V 0 i  � m   ; <�C�C � l  < @��B�A� n   < @��� 1   = ?�@
�@ 
leng� o   < =�?�? &0 thenoteparagraphs theNoteParagraphs�B  �A  �U  � ��� l  k k�>�=�<�>  �=  �<  � ��� Z   k �����;� l  k n��:�9� C   k n��� o   k l�8�8 0 thenote theNote� m   l m�� ���  D u e�:  �9  � r   q t��� m   q r�� ���  d u e� o      �7�7 0 
dueorstart 
dueOrStart� ��� l  w z��6�5� C   w z��� o   w x�4�4 0 thenote theNote� m   x y�� ��� 
 S t a r t�6  �5  � ��3� r   } ���� m   } ~�� ��� 
 s t a r t� o      �2�2 0 
dueorstart 
dueOrStart�3  �;  � ��� l  � ��1�0�/�1  �0  �/  � ��� Z   �����.�� =  � ���� o   � ��-�- 0 
dueorstart 
dueOrStart� m   � ��,
�, 
null� L   � ��� J   � ��� ��+� m   � ��*
�* 
msng�+  �.  � k   ��    Z  � ��)�( E   � � o   � ��'�' 0 thenote theNote m   � � �  A s k r   � �	
	 m   � ��&
�& boovtrue
 o      �%�% 0 
askfordate 
askForDate�)  �(    Z  � ��$�# E   � � o   � ��"�" 0 thenote theNote m   � � �  P r o j e c t r   � � m   � ��!
�! boovtrue o      � �  &0 relativetoproject relativeToProject�$  �#    Y   � ��� Z   � ��� E  � � o   � ��� 0 thenote theNote n   � � 4   � �� 
� 
cobj  o   � ��� 0 i   o   � ��� 0 thevariables theVariables k   � �!! "#" r   � �$%$ m   � ��
� boovtrue% o      �� 0 datevariable dateVariable# &'& r   � �()( o   � ��� 0 i  ) o      �� ,0 datevariableposition dateVariablePosition' *�*  S   � ��  �  �  � 0 i   m   � ���  l  � �+��+ n   � �,-, 1   � ��
� 
leng- o   � ��� 0 thevariables theVariables�  �  �   ./. l  � �����  �  �  / 010 r   � �232 m   � ��

�
 boovfals3 o      �	�	 40 specialadjustforweekends specialAdjustForWeekends1 454 r   � �676 m   � ��
� boovfals7 o      �� 60 specialadjustforotherdays specialAdjustForOtherDays5 898 l  � �����  �  �  9 :�: Z   ��;<�=; o   � ��� 0 
askfordate 
askForDate< k   ��>> ?@? r   � �ABA m   � �CC �DD  i t e mB o      � �  0 classofitem classOfItem@ EFE Z   �GHI��G =  � �JKJ n   � �LML m   � ���
�� 
pclsM o   � ����� 0 theitem theItemK m   � ���
�� 
FCacH r   � NON m   � �PP �QQ  t a s kO o      ���� 0 classofitem classOfItemI RSR = TUT n  VWV m  ��
�� 
pclsW o  ���� 0 theitem theItemU m  ��
�� 
FCprS X��X r  YZY m  [[ �\\  p r o j e c tZ o      ���� 0 classofitem classOfItem��  ��  F ]^] r  <_`_ b  :aba b  6cdc b  2efe b  ,ghg b  (iji b  $klk b  "mnm b  opo m  qq �rr 0 W h e n   w o u l d   y o u   l i k e   t h e  p o  ���� 0 
dueorstart 
dueOrStartn m  !ss �tt    d a t e   o f   t h e  l o  "#���� 0 classofitem classOfItemj m  $'uu �vv   h 1  (+��
�� 
quotf l ,1w����w n  ,1xyx 1  -1��
�� 
pnamy o  ,-���� 0 theitem theItem��  ��  d 1  25��
�� 
quotb m  69zz �{{�   t o   b e ?   Y o u   c a n   u s e   r e l a t i v e   ( i . e . ,   " 3 d   2 p m " ) ,   a b s o l u t e   ( i . e . ,   " J a n   1 9   1 5 : 0 0 " ) ,   o r   t h e   s h o r t   d a t e   f o r m a t   f r o m   y o u r   " L a n g u a g e   a n d   T e x t "   p r e f e r e n c e s   ( i . e . ,   " 1 3 . 0 1 . 1 9 "   o r   " 0 1 - 1 9 " )   d a t e s   i n   y o u r   i n p u t .` o      ���� 0 displaytext displayText^ |}| Q  =v~�~ r  @S��� n  @O��� 1  KO��
�� 
ttxt� l @K������ I @K����
�� .sysodlogaskr        TEXT� o  @A���� 0 displaytext displayText� �����
�� 
dtxt� m  DG�� ���  1 d   1 2 a m��  ��  ��  � o      ���� 0 	inputdate 	inputDate R      ����
�� .ascrerr ****      � ****� o      ���� 0 	errortext 	errorText� �����
�� 
errn� o      ���� 0 errornumber errorNumber��  � Z  [v������� = [b��� o  [^���� 0 errornumber errorNumber� m  ^a������� L  er�� J  eq�� ��� m  eh��
�� 
msng� ���� n ho��� I  io������� $0 getridofdateinfo getRidOfDateInfo� ��� o  ij���� "0 theoriginalnote theOriginalNote� ���� o  jk���� 0 
dueorstart 
dueOrStart��  ��  �  f  hi��  ��  ��  } ��� l ww��������  ��  ��  � ��� l ww������  � 1 + See whether a special adjustment is needed   � ��� V   S e e   w h e t h e r   a   s p e c i a l   a d j u s t m e n t   i s   n e e d e d� ��� Z w�������� G  w���� l w~������ E  w~��� o  wz���� 0 	inputdate 	inputDate� m  z}�� ���  - W��  ��  � l �������� E  ����� o  ������ 0 	inputdate 	inputDate� m  ���� ���  - w��  ��  � r  ����� m  ����
�� boovtrue� o      ���� 40 specialadjustforweekends specialAdjustForWeekends��  ��  � ��� Z ��������� G  ����� l �������� E  ����� o  ������ 0 	inputdate 	inputDate� m  ���� ���  - S��  ��  � l �������� E  ����� o  ������ 0 	inputdate 	inputDate� m  ���� ���  - s��  ��  � r  ����� m  ����
�� boovtrue� o      ���� 60 specialadjustforotherdays specialAdjustForOtherDays��  ��  � ��� r  ����� J  ���� ��� m  ���� ���  - W� ��� m  ���� ���  - w� ��� m  ���� ���  - S� ���� m  ���� ���  - s��  � n     ��� 1  ����
�� 
txdl�  f  ��� ��� r  ����� n  ����� 2  ����
�� 
citm� o  ������ 0 	inputdate 	inputDate� o      ���� 0 	inputdate 	inputDate� ��� r  ����� m  ���� ���  � n     ��� 1  ����
�� 
txdl�  f  ��� ���� r  ����� c  ����� o  ������ 0 	inputdate 	inputDate� m  ����
�� 
ctxt� o      ���� 0 	inputdate 	inputDate��  �  = k  ���� ��� Z �������� G  ����� l �������� E  ����� o  ������ 0 thenote theNote� m  ���� ���  - W��  ��  � l �������� E  ����� o  ������ 0 thenote theNote� m  ��   �  - w��  ��  � r    m   ��
�� boovtrue o      ���� 40 specialadjustforweekends specialAdjustForWeekends��  ��  �  Z !���� G  	 l 
����
 E   o  	���� 0 thenote theNote m  	 �  - S��  ��  	 l ���� E   o  ���� 0 thenote theNote m   �  - s��  ��   r   m  ��
�� boovtrue o      ���� 60 specialadjustforotherdays specialAdjustForOtherDays��  ��    r  "K J  "G  m  "% �  D u e :   m  %(!! �""  S t a r t :  #$# m  (+%% �&&  D u e$ '(' m  +.)) �** 
 S t a r t( +,+ m  .1-- �..  P r o j e c t, /0/ m  1411 �22 
 t o d a y0 343 m  4755 �66  a t4 787 m  7:99 �::  - W8 ;<; m  :=== �>>  - w< ?@? m  =@AA �BB  - S@ C��C m  @CDD �EE  - s��   o      ���� (0 possibledelimiters possibleDelimiters FGF Z LaHI����H o  LM���� 0 datevariable dateVariableI r  P]JKJ c  PXLML l PTN����N n  PTOPO 4  QT��Q
�� 
cobjQ o  RS���� ,0 datevariableposition dateVariablePositionP o  PQ���� 0 thevariables theVariables��  ��  M m  TW��
�� 
TEXTK n      RSR  ;  [\S o  X[���� (0 possibledelimiters possibleDelimiters��  ��  G TUT r  bkVWV o  be���� (0 possibledelimiters possibleDelimitersW n     XYX 1  fj��
�� 
txdlY  f  efU Z[Z s  lv\]\ n  lq^_^ 2  mq��
�� 
citm_ o  lm�� 0 thenote theNote] o      �� 0 tempdate tempDate[ `a` r  w�bcb m  wzdd �ee  c n     fgf 1  {�
� 
txdlg  f  z{a h�h r  ��iji c  ��klk o  ���� 0 tempdate tempDatel m  ���
� 
TEXTj o      �� 0 	inputdate 	inputDate�  �  � mnm l ������  �  �  n opo l ������  �  �  p qrq r  ��sts n ��uvu I  ���w�� 0 englishtime englishTimew x�x o  ���� 0 	inputdate 	inputDate�  �  v  f  ��t o      �~�~ "0 secondsdeferred secondsDeferredr yzy Z ��{|�}�|{ =  ��}~} o  ���{�{ "0 secondsdeferred secondsDeferred~ m  ���z�z��| L  �� J  ���� ��� m  ���y
�y 
msng� ��x� n ����� I  ���w��v�w $0 getridofdateinfo getRidOfDateInfo� ��� o  ���u�u "0 theoriginalnote theOriginalNote� ��t� o  ���s�s 0 
dueorstart 
dueOrStart�t  �v  �  f  ���x  �}  �|  z ��� Z  �����r�� H  ���� o  ���q�q 0 datevariable dateVariable� Z  �t���p�� H  ���� o  ���o�o &0 relativetoproject relativeToProject� k  ���� ��� r  ����� l ����n�m� I ���l�k�j
�l .misccurdldt    ��� null�k  �j  �n  �m  � o      �i�i 0 desireddate desiredDate� ��� r  ����� m  ���h�h  � n      ��� 1  ���g
�g 
time� o  ���f�f 0 desireddate desiredDate� ��� r  ����� [  ����� o  ���e�e 0 desireddate desiredDate� o  ���d�d "0 secondsdeferred secondsDeferred� o      �c�c 0 desireddate desiredDate� ��b� l ���a�`�_�a  �`  �_  �b  �p  � k  �t�� ��� Z �����^�]� = ����� n  ����� m  ���\
�\ 
pcls� o  ���[�[ 0 theitem theItem� m  ���Z
�Z 
FCpr� L  ���� J  ���� ��Y� m  ���X
�X 
msng�Y  �^  �]  � ��W� Z  �t���V�� = ����� o  ���U�U 0 
dueorstart 
dueOrStart� m  ���� ���  d u e� k  6�� ��� r  ��� n  
��� 1  
�T
�T 
FCDd� n  ��� 1  �S
�S 
FCPr� o  �R�R 0 theitem theItem� o      �Q�Q 0 relativedate relativeDate� ��� Z  *���P�O� = ��� o  �N�N 0 relativedate relativeDate� m  �M
�M 
msng� L  &�� J  %�� ��� m  �L
�L 
msng� ��K� n #��� I  #�J��I�J $0 getridofdateinfo getRidOfDateInfo� ��� o  �H�H "0 theoriginalnote theOriginalNote� ��G� o  �F�F 0 
dueorstart 
dueOrStart�G  �I  �  f  �K  �P  �O  � ��E� r  +6��� [  +2��� o  +.�D�D 0 relativedate relativeDate� o  .1�C�C "0 secondsdeferred secondsDeferred� o      �B�B 0 desireddate desiredDate�E  �V  � k  9t�� ��� r  9F��� n  9B��� 1  >B�A
�A 
FCDs� n  9>��� 1  :>�@
�@ 
FCPr� o  9:�?�? 0 theitem theItem� o      �>�> 0 relativedate relativeDate� ��� Z  Gh���=�<� = GN��� o  GJ�;�; 0 relativedate relativeDate� m  JM�:
�: 
msng� k  Qd�� ��� r  QZ��� l QV��9�8� I QV�7�6�5
�7 .misccurdldt    ��� null�6  �5  �9  �8  � o      �4�4 0 relativedate relativeDate� ��3� r  [d��� m  [\�2�2  � n      ��� 1  _c�1
�1 
time� o  \_�0�0 0 relativedate relativeDate�3  �=  �<  � ��/� r  it��� [  ip��� o  il�.�. 0 relativedate relativeDate� o  lo�-�- "0 secondsdeferred secondsDeferred� o      �,�, 0 desireddate desiredDate�/  �W  �r  � r  w���� [  w��� l w{��+�*� n  w{��� 4  x{�) 
�) 
cobj  o  yz�(�( ,0 datevariableposition dateVariablePosition� o  wx�'�' "0 thereplacements theReplacements�+  �*  � o  {~�&�& "0 secondsdeferred secondsDeferred� o      �%�% 0 desireddate desiredDate�  l ���$�#�"�$  �#  �"    r  �� n �� I  ���!	� �! :0 adjustforspecialandweekends adjustForSpecialAndWeekends	 

 o  ���� 0 desireddate desiredDate  o  ���� 40 specialadjustforweekends specialAdjustForWeekends � o  ���� 60 specialadjustforotherdays specialAdjustForOtherDays�  �     f  �� o      �� 0 desireddate desiredDate  l ������  �  �    Z  ���� l ���� > �� n  �� m  ���
� 
pcls o  ���� 0 theitem theItem m  ���
� 
FCpr�  �   Z  ��� F  �� = ��  o  ���� 0 
dueorstart 
dueOrStart  m  ��!! �""  D u e l ��#��# > ��$%$ n  ��&'& 1  ���
� 
FCDd' n  ��()( 1  ���
� 
FCPr) o  ���
�
 0 theitem theItem% m  ���	
�	 
msng�  �   Z  �2*+,�* A  ��-.- o  ���� 0 desireddate desiredDate. l ��/��/ I �����
� .misccurdldt    ��� null�  �  �  �  + Z ��01�� 0 o  ������ 0 usegrowl useGrowl1 n ��232 I  ����4���� 
0 notify  4 565 m  ��77 �88 ( D u e   D a t e   i n   t h e   P a s t6 9:9 b  ��;<; b  ��=>= m  ��?? �@@  C h e c k   t a s k   "> n  ��ABA 1  ����
�� 
pnamB o  ������ 0 theitem theItem< m  ��CC �DD  " .: EFE o  ������ 0 
datenotify 
dateNotifyF G��G m  ��HH �II  ��  ��  3  f  ���  �   , JKJ ?  � LML o  ������ 0 desireddate desiredDateM n  ��NON 1  ����
�� 
FCDdO n  ��PQP 1  ����
�� 
FCPrQ o  ������ 0 theitem theItemK R��R Z .ST����S o  ���� 0 usegrowl useGrowlT n *UVU I  *��W���� 
0 notify  W XYX m  ZZ �[[ 4 D u e   D a t e   A f t e r   P r o j e c t   D u eY \]\ b  ^_^ b  `a` m  bb �cc  C h e c k   t a s k   "a n  ded 1  ��
�� 
pname o  ���� 0 theitem theItem_ m  ff �gg  " .] hih o  !���� 0 
datenotify 
dateNotifyi j��j m  !$kk �ll  ��  ��  V  f  ��  ��  ��  �   mnm l 5Bo����o > 5Bpqp n  5>rsr 1  :>��
�� 
FCDds n  5:tut 1  6:��
�� 
FCPru o  56���� 0 theitem theItemq m  >A��
�� 
msng��  ��  n v��v Z  E�wx����w ?  ERyzy o  EH���� 0 desireddate desiredDatez n  HQ{|{ 1  MQ��
�� 
FCDd| n  HM}~} 1  IM��
�� 
FCPr~ o  HI���� 0 theitem theItemx Z U������ o  UZ���� 0 usegrowl useGrowl� n ]|��� I  ^|������� 
0 notify  � ��� m  ^a�� ��� < S t a r t   D a t e   A f t e r   P r o j e c t   S t a r t� ��� b  an��� b  aj��� m  ad�� ���  C h e c k   t a s k   "� n  di��� 1  ei��
�� 
pnam� o  de���� 0 theitem theItem� m  jm�� ���  " .� ��� o  ns���� 0 
datenotify 
dateNotify� ���� m  sv�� ���  ��  ��  �  f  ]^��  ��  ��  ��  ��  �  �  �   ��� l ����������  ��  ��  � ��� r  ����� n ����� I  ��������� $0 getridofdateinfo getRidOfDateInfo� ��� o  ������ "0 theoriginalnote theOriginalNote� ���� o  ������ 0 
dueorstart 
dueOrStart��  ��  �  f  ��� o      ���� 0 thenote theNote� ���� L  ���� J  ���� ��� o  ������ 0 desireddate desiredDate� ��� o  ������ 0 
dueorstart 
dueOrStart� ���� o  ������ 0 thenote theNote��  ��  � 1    ��
�� 
FCcn� 4  
 ���
�� 
FCdw� m    ���� � 1    ��
�� 
FCDo� m     ���                                                                                  OFOC  alis    X  Macintosh HD               ͘L�H+   v<�OmniFocus.app                                                   ���ΞR        ����  	                Applications    ͗�.      Ν�     v<�  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  | ��� l     ��������  ��  ��  � ��� l     ����  �  �  � ��� i   ~ ���� I      ���� 0 englishtime englishTime� ��� o      �� 0 datedesired dateDesired�  �  � k    �� ��� Z    ����� =    ��� o     �� 0 datedesired dateDesired� m    �� ���  0� L    �� m    ��  �  �  � ��� l   ����  �  �  � ��� r    ��� m    ��  � o      �� 0 
monthfound 
monthFound� ��� r    ��� m    ��  � o      �� 0 weekdayfound weekdayFound� ��� l   ����  � Z T Solves an issue with the treatment of leading zeros for the minutes (i.e., 12:01am)   � ��� �   S o l v e s   a n   i s s u e   w i t h   t h e   t r e a t m e n t   o f   l e a d i n g   z e r o s   f o r   t h e   m i n u t e s   ( i . e . ,   1 2 : 0 1 a m )� ��� r    ��� m    �
� boovfals� o      �� &0 minuteleadingzero minuteLeadingZero� ��� l   ����  �  �  � ��� l   ����  � = 7 Figures out if the user excluded any of the components   � ��� n   F i g u r e s   o u t   i f   t h e   u s e r   e x c l u d e d   a n y   o f   t h e   c o m p o n e n t s� ��� r    ��� m    �
� boovfals� o      �� 0 timemissing timeMissing� ��� r     ��� m    �
� boovfals� o      �� 0 daysmissing daysMissing� ��� r   ! $��� m   ! "�
� boovfals� o      �� 0 weeksmissing weeksMissing� ��� l  % %����  �  �  � ��� l  % %����  � 1 + Sets up the delimiters for different items   � ��� V   S e t s   u p   t h e   d e l i m i t e r s   f o r   d i f f e r e n t   i t e m s� ��� r   % .��� J   % ,�� ��� m   % &�� ���  a m� ��� m   & '�� ���  p m� ��� m   ' (�� �    a�  m   ( ) �  p � m   ) * �  :�  � o      ��  0 timedelimiters timeDelimiters� 	 r   / 6

 J   / 4  m   / 0 �  d a y s  m   0 1 �  d a y � m   1 2 �  d�   o      �� 0 daydelimiters dayDelimiters	  r   7 > J   7 <  m   7 8 �   
 w e e k s !"! m   8 9## �$$  w e e k" %�% m   9 :&& �''  w�   o      ��  0 weekdelimiters weekDelimiters ()( r   ? c*+* J   ? a,, -.- m   ? @// �00  J a n u a r y. 121 m   @ A33 �44  F e b r u a r y2 565 m   A B77 �88 
 M a r c h6 9:9 m   B E;; �<< 
 A p r i l: =>= m   E H?? �@@  M a y> ABA m   H KCC �DD  J u n eB EFE m   K NGG �HH  J u l yF IJI m   N QKK �LL  A u g u s tJ MNM m   Q TOO �PP  S e p t e m b e rN QRQ m   T WSS �TT  O c t o b e rR UVU m   W ZWW �XX  N o v e m b e rV Y�Y m   Z ]ZZ �[[  D e c e m b e r�  + o      �� *0 longmonthdelimiters longMonthDelimiters) \]\ r   d �^_^ J   d �`` aba m   d gcc �dd  J a nb efe m   g jgg �hh  F e bf iji m   j mkk �ll  M a rj mnm m   m poo �pp  A p rn qrq m   p sss �tt  M a yr uvu m   s vww �xx  J u nv yzy m   v y{{ �||  J u lz }~} m   y | ���  A u g~ ��� m   | �� ���  S e p� ��� m    ��� ���  O c t� ��� m   � ��� ���  N o v� ��� m   � ��� ���  D e c�  _ o      �� "0 monthdelimiters monthDelimiters] ��� r   � ���� J   � ��� ��� m   � ��� ���  S u n d a y� ��� m   � ��� ���  M o n d a y� ��� m   � ��� ���  T u e s d a y� ��� m   � ��� ���  W e d n e s d a y� ��� m   � ��� ���  T h u r s d a y� ��� m   � ��� ���  F r i d a y� ��� m   � ��� ���  S a t u r d a y�  � o      �� .0 longweekdaydelimiters longWeekdayDelimiters� ��� r   � ���� J   � ��� ��� m   � ��� ���  S u n� ��� m   � ��� ���  M o n� ��� m   � ��� ���  T u e� ��� m   � ��� ���  W e d� ��� m   � ��� ���  T h u� ��� m   � ��� ���  F r i� ��� m   � ��� ���  S a t�  � o      �� &0 weekdaydelimiters weekdayDelimiters� ��� r   � ���� J   � ��� ��� m   � ��� ��� 
 T o d a y� ��� m   � ��� ���  T o m o r r o w� ��� m   � ��� ���  a t�  � o      �� <0 specialrelativedaydelimiters specialRelativeDayDelimiters� ��� r   � ���� J   � ��� ��� m   � ��� ���   � ��� m   � ��� ���  t h� ��� m   � ��� ���  s t� ��� m   � ��� ���  r d� ��� m   � ��� ���  n d�  � o      �� "0 otherdelimiters otherDelimiters� ��� l  � �����  �  �  � ��� r   � ���� m   � ��� ���  u n k n o w n� o      �� 0 inthe inThe�    r   � � m   � ���   o      �� 00 howmanynumbersinputted howManyNumbersInputted  r   � � J   � ���   o      �� 0 numlist numList 	 l  � �����  �  �  	 

 l  � ���   !  See if they included AM/PM    � 6   S e e   i f   t h e y   i n c l u d e d   A M / P M  Z  ��~�} I   ��|�{�| (0 isnumberidentifier isNumberIdentifier  m   � �  a �z o  �y�y 0 datedesired dateDesired�z  �{   r  
 m  
 �  A M o      �x�x 0 inthe inThe�~  �}    Z - �w�v I  �u!�t�u (0 isnumberidentifier isNumberIdentifier! "#" m  $$ �%%  p# &�s& o  �r�r 0 datedesired dateDesired�s  �t    r  ")'(' m  "%)) �**  P M( o      �q�q 0 inthe inThe�w  �v   +,+ l ..�p�o�n�p  �o  �n  , -.- l ..�m/0�m  / [ U See if they gave an absolute date formatted in YY.MM.DD or some other similar format   0 �11 �   S e e   i f   t h e y   g a v e   a n   a b s o l u t e   d a t e   f o r m a t t e d   i n   Y Y . M M . D D   o r   s o m e   o t h e r   s i m i l a r   f o r m a t. 232 r  .9454 b  .3676 b  .1898 o  ./�l�l <0 specialrelativedaydelimiters specialRelativeDayDelimiters9 o  /0�k�k "0 otherdelimiters otherDelimiters7 o  12�j�j  0 timedelimiters timeDelimiters5 n     :;: 1  48�i
�i 
txdl;  f  343 <=< r  :C>?> n  :?@A@ 2  ;?�h
�h 
citmA o  :;�g�g 0 datedesired dateDesired? o      �f�f 0 
checkinput 
checkInput= BCB r  DJDED J  DF�e�e  E o      �d�d &0 checkinputcleaned checkInputCleanedC FGF Y  K�H�cIJ�bH Z  \�KL�a�`K > \jMNM n  \fOPO 4  _f�_Q
�_ 
cobjQ o  be�^�^ 0 i  P o  \_�]�] 0 
checkinput 
checkInputN m  fiRR �SS  L r  m|TUT n  mwVWV 4  pw�\X
�\ 
cobjX o  sv�[�[ 0 i  W o  mp�Z�Z 0 
checkinput 
checkInputU l     Y�Y�XY n      Z[Z  ;  z{[ o  wz�W�W &0 checkinputcleaned checkInputCleaned�Y  �X  �a  �`  �c 0 i  I m  NO�V�V J l OW\�U�T\ n  OW]^] 1  RV�S
�S 
leng^ o  OR�R�R 0 
checkinput 
checkInput�U  �T  �b  G _`_ Q  �ab�Qa k  �
cc ded r  ��fgf n  ��hih 4  ���Pj
�P 
cobjj m  ���O�O i o  ���N�N &0 checkinputcleaned checkInputCleanedg o      �M�M 0 thedatecheck theDateChecke k�Lk Z  �
lm�K�Jl G  ��non G  ��pqp l ��r�I�Hr E  ��sts o  ���G�G 0 thedatecheck theDateCheckt m  ��uu �vv  .�I  �H  q l ��w�F�Ew E  ��xyx o  ���D�D 0 thedatecheck theDateChecky m  ��zz �{{  -�F  �E  o l ��|�C�B| E  ��}~} o  ���A�A 0 thedatecheck theDateCheck~ m  �� ���  /�C  �B  m k  ��� ��� r  ����� l ����@�?� I ���>�=�<
�> .misccurdldt    ��� null�=  �<  �@  �?  � o      �;�; 0 
todaysdate 
todaysDate� ��� r  ����� m  ���:�:  � n      ��� 1  ���9
�9 
time� o  ���8�8 0 
todaysdate 
todaysDate� ��� r  ����� n ����� I  ���7��6�7 00 understandabsolutedate understandAbsoluteDate� ��5� o  ���4�4 0 thedatecheck theDateCheck�5  �6  �  f  ��� o      �3�3 0 
targetdate 
targetDate� ��� Z �����2�1� =  ����� o  ���0�0 0 
targetdate 
targetDate� m  ���/�/��� L  ���� m  ���.�.���2  �1  � ��� r  ����� m  ���� ���  � n     ��� 1  ���-
�- 
txdl�  f  ��� ��,� Z  ����+�� = ����� n  ����� 1  ���*
�* 
leng� o  ���)�) &0 checkinputcleaned checkInputCleaned� m  ���(�( � L  �� c  ��� l 	��'�&� \  	��� o  �%�% 0 
targetdate 
targetDate� o  �$�$ 0 
todaysdate 
todaysDate�'  �&  � m  	�#
�# 
nmbr�+  � k  �� ��� r  $��� n   ��� 7  �"��
�" 
cobj� m  �!�! � m  � � ��� o  �� &0 checkinputcleaned checkInputCleaned� o      �� 0 thetime theTime� ��� r  %+��� J  %'��  � o      �� 0 numlist numList� ��� l ,,����  �  �  � ��� r  ,7��� n  ,3��� 1  /3�
� 
leng� o  ,/�� 0 thetime theTime� o      �� &0 timestorelocation timeStoreLocation� ��� V  8���� Q  B����� k  E��� ��� l EE����  � K E If the minutes have a leading zero, just combine them with the hours   � ��� �   I f   t h e   m i n u t e s   h a v e   a   l e a d i n g   z e r o ,   j u s t   c o m b i n e   t h e m   w i t h   t h e   h o u r s� ��� Z  E������ F  E`��� l EK���� =  EK��� o  EH�� 0 numlist numList� J  HJ��  �  �  � l N\���� C  N\��� l NX���
� n  NX��� 4  QX�	�
�	 
cobj� o  TW�� &0 timestorelocation timeStoreLocation� o  NQ�� 0 thetime theTime�  �
  � m  X[�� ���  0�  �  � k  c��� ��� r  c���� c  c~��� l cz���� b  cz��� l co���� n  co��� 4  fo��
� 
cobj� l in��� � \  in��� o  il���� &0 timestorelocation timeStoreLocation� m  lm���� �  �   � o  cf���� 0 thetime theTime�  �  � l oy������ n  oy��� 4  ry���
�� 
cobj� o  ux���� &0 timestorelocation timeStoreLocation� o  or���� 0 thetime theTime��  ��  �  �  � m  z}��
�� 
nmbr� l     ������ n      ���  ;  ��� o  ~����� 0 numlist numList��  ��  � ��� r  ��� � m  ����
�� boovtrue  o      ���� &0 minuteleadingzero minuteLeadingZero� �� r  �� \  �� o  ������ &0 timestorelocation timeStoreLocation m  ������  o      ���� &0 timestorelocation timeStoreLocation��  �  � k  ��  l ����	
��  	 &   Otherwise, get the numbers only   
 � @   O t h e r w i s e ,   g e t   t h e   n u m b e r s   o n l y  r  �� c  �� l ������ n  �� 4  ����
�� 
cobj o  ������ &0 timestorelocation timeStoreLocation o  ������ 0 thetime theTime��  ��   m  ����
�� 
nmbr o      ���� 0 tempnum tempNum  Z ������ >  �� o  ������ 0 tempnum tempNum m  ������   r  �� o  ������ 0 tempnum tempNum l     ���� n         ;  ��  o  ������ 0 numlist numList��  ��  ��  ��   !��! r  ��"#" \  ��$%$ o  ������ &0 timestorelocation timeStoreLocation% m  ������ # o      ���� &0 timestorelocation timeStoreLocation��  �  � R      ������
�� .ascrerr ****      � ****��  ��  �  � ?  <A&'& o  <?���� &0 timestorelocation timeStoreLocation' m  ?@����  � ()( l ����������  ��  ��  ) *+* r  ��,-, I  ����.���� $0 figureoutthetime figureOutTheTime. /0/ o  ������ 0 numlist numList0 121 m  ����
�� boovfals2 343 m  ����
�� boovtrue4 565 m  ����
�� boovtrue6 7��7 o  ������ &0 minuteleadingzero minuteLeadingZero��  ��  - o      ���� 0 thetime theTime+ 898 r  ��:;: I  ����<���� &0 understandthetime understandTheTime< =>= o  ������ 0 thetime theTime> ?@? o  ������ 0 inthe inThe@ A��A m  ����
�� boovfals��  ��  ; o      ���� 0 thetime theTime9 B��B L  �CC c  �DED l �F���F \  �GHG [  ��IJI o  ���� 0 
targetdate 
targetDateJ o  ���� 0 thetime theTimeH o  � �� 0 
todaysdate 
todaysDate��  �  E m  �
� 
nmbr��  �,  �K  �J  �L  b R      ���
� .ascrerr ****      � ****�  �  �Q  ` KLK l ����  �  �  L MNM l �OP�  O N H See if they gave an absolute date, a relative one, or a day of the week   P �QQ �   S e e   i f   t h e y   g a v e   a n   a b s o l u t e   d a t e ,   a   r e l a t i v e   o n e ,   o r   a   d a y   o f   t h e   w e e kN RSR Y  �T�UV�T k  #�WW XYX Z  #LZ[��Z G  #>\]\ l #-^��^ E  #-_`_ o  #$�� 0 datedesired dateDesired` l $,a��a n  $,bcb 4  %,�d
� 
cobjd o  (+�� 0 i  c o  $%�� *0 longmonthdelimiters longMonthDelimiters�  �  �  �  ] l 0:e��e E  0:fgf o  01�� 0 datedesired dateDesiredg l 19h��h n  19iji 4  29�k
� 
cobjk o  58�� 0 i  j o  12�� "0 monthdelimiters monthDelimiters�  �  �  �  [ k  AHll mnm r  AFopo o  AD�� 0 i  p o      �� 0 
monthfound 
monthFoundn q�q  S  GH�  �  �  Y r�r Z  M�st��s B  MVuvu o  MP�� 0 i  v l PUw��w n  PUxyx 1  QU�
� 
lengy o  PQ�� &0 weekdaydelimiters weekdayDelimiters�  �  t Z  Y�z{��z G  Yt|}| l Yc~��~ E  Yc� o  YZ�� 0 datedesired dateDesired� l Zb���� n  Zb��� 4  [b��
� 
cobj� o  ^a�� 0 i  � o  Z[�� .0 longweekdaydelimiters longWeekdayDelimiters�  �  �  �  } l fp���� E  fp��� o  fg�� 0 datedesired dateDesired� l go���� n  go��� 4  ho��
� 
cobj� o  kn�� 0 i  � o  gh�� &0 weekdaydelimiters weekdayDelimiters�  �  �  �  { r  w|��� o  wz�� 0 i  � o      �� 0 weekdayfound weekdayFound�  �  �  �  �  � 0 i  U m  �� V l ���~� n  ��� 1  �}
�} 
leng� o  �|�| "0 monthdelimiters monthDelimiters�  �~  �  S ��� l ���{�z�y�{  �z  �y  � ��� l ���x���x  � K E Getting rid of all the bits I could imagine being around the numbers   � ��� �   G e t t i n g   r i d   o f   a l l   t h e   b i t s   I   c o u l d   i m a g i n e   b e i n g   a r o u n d   t h e   n u m b e r s� ��� r  ����� l ����w�v� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� o  ���u�u <0 specialrelativedaydelimiters specialRelativeDayDelimiters� o  ���t�t *0 longmonthdelimiters longMonthDelimiters� o  ���s�s "0 monthdelimiters monthDelimiters� o  ���r�r  0 weekdelimiters weekDelimiters� o  ���q�q 0 daydelimiters dayDelimiters� o  ���p�p  0 timedelimiters timeDelimiters� o  ���o�o "0 otherdelimiters otherDelimiters� o  ���n�n .0 longweekdaydelimiters longWeekdayDelimiters� o  ���m�m &0 weekdaydelimiters weekdayDelimiters�w  �v  � 1  ���l
�l 
txdl� ��� r  ����� n  ����� 2  ���k
�k 
citm� o  ���j�j 0 datedesired dateDesired� o      �i�i 0 	inputlist 	inputList� ��� l ���h���h  �   Resetting delimiters   � ��� *   R e s e t t i n g   d e l i m i t e r s� ��� r  ����� J  ���� ��g� m  ���� ���  �g  � 1  ���f
�f 
txdl� ��� l ���e�d�c�e  �d  �c  � ��� Y  �#��b���a� Z  ����`�_� F  ����� = ����� n  ����� 4  ���^�
�^ 
cobj� o  ���]�] 0 i  � o  ���\�\ 0 	inputlist 	inputList� m  ���� ���  -� l ����[�Z� E ����� m  ���� ���  1 2 3 4 5 6 7 8 9� n  ����� 4  ���Y�
�Y 
cha � m  ���X�X � n  ����� 4  ���W�
�W 
cobj� l ����V�U� [  ����� o  ���T�T 0 i  � m  ���S�S �V  �U  � o  ���R�R 0 	inputlist 	inputList�[  �Z  � r  ���� b  ���� n  � ��� 4  � �Q�
�Q 
cobj� o  ���P�P 0 i  � o  ���O�O 0 	inputlist 	inputList� n   ��� 4  �N�
�N 
cobj� l ��M�L� [  ��� o  	�K�K 0 i  � m  	
�J�J �M  �L  � o   �I�I 0 	inputlist 	inputList� n      ��� 4  �H�
�H 
cobj� l ��G�F� [  ��� o  �E�E 0 i  � m  �D�D �G  �F  � o  �C�C 0 	inputlist 	inputList�`  �_  �b 0 i  � m  ���B�B � l ����A�@� n  ����� 1  ���?
�? 
leng� o  ���>�> 0 	inputlist 	inputList�A  �@  �a  � ��� l $$�=�<�;�=  �<  �;  � ��� l $$�:���:  � ( " Count how many numbers were given   � ��� D   C o u n t   h o w   m a n y   n u m b e r s   w e r e   g i v e n� ��� Y  $���9 �8� k  5�  Z  5��7�6 > 5C l 5?	�5�4	 n  5?

 4  8?�3
�3 
cobj o  ;>�2�2 0 i   o  58�1�1 0 	inputlist 	inputList�5  �4   m  ?B �   Q  F��0 k  Iw  r  I[ c  IW l IS�/�. n  IS 4  LS�-
�- 
cobj o  OR�,�, 0 i   o  IL�+�+ 0 	inputlist 	inputList�/  �.   m  SV�*
�* 
long o      �)�) 0 tempitem tempItem �( Z \w�'�& = \g  n  \c!"! m  _c�%
�% 
pcls" o  \_�$�$ 0 tempitem tempItem  m  cf�#
�# 
long r  js#$# [  jo%&% o  jm�"�" 00 howmanynumbersinputted howManyNumbersInputted& m  mn�!�! $ o      � �  00 howmanynumbersinputted howManyNumbersInputted�'  �&  �(   R      ���
� .ascrerr ****      � ****�  �  �0  �7  �6   '�' r  ��()( m  ��** �++  ) o      �� 0 tempitem tempItem�  �9 0 i    m  '(��  l (0,��, n  (0-.- 1  +/�
� 
leng. o  (+�� 0 	inputlist 	inputList�  �  �8  � /0/ l ������  �  �  0 121 l ���34�  3 S M Get the numbers of the input ���start from the back to get the minutes first   4 �55 �   G e t   t h e   n u m b e r s   o f   t h e   i n p u t    � s t a r t   f r o m   t h e   b a c k   t o   g e t   t h e   m i n u t e s   f i r s t2 676 r  ��898 n  ��:;: 1  ���
� 
leng; o  ���� 0 	inputlist 	inputList9 o      �� &0 timestorelocation timeStoreLocation7 <=< V  �M>?> Q  �H@A�@ k  �?BB CDC l ���EF�  E K E If the minutes have a leading zero, just combine them with the hours   F �GG �   I f   t h e   m i n u t e s   h a v e   a   l e a d i n g   z e r o ,   j u s t   c o m b i n e   t h e m   w i t h   t h e   h o u r sD H�H Z  �?IJ�KI F  ��LML l ��N�
�	N =  ��OPO o  ���� 0 numlist numListP J  ����  �
  �	  M l ��Q��Q C  ��RSR l ��T��T n  ��UVU 4  ���W
� 
cobjW o  ���� &0 timestorelocation timeStoreLocationV o  ��� �  0 	inputlist 	inputList�  �  S m  ��XX �YY  0�  �  J k  ��ZZ [\[ r  ��]^] c  ��_`_ l ��a����a b  ��bcb l ��d����d n  ��efe 4  ����g
�� 
cobjg l ��h����h \  ��iji o  ������ &0 timestorelocation timeStoreLocationj m  ������ ��  ��  f o  ������ 0 	inputlist 	inputList��  ��  c l ��k����k n  ��lml 4  ����n
�� 
cobjn o  ������ &0 timestorelocation timeStoreLocationm o  ������ 0 	inputlist 	inputList��  ��  ��  ��  ` m  ����
�� 
nmbr^ l     o����o n      pqp  ;  ��q o  ������ 0 numlist numList��  ��  \ rsr r  ��tut m  ����
�� boovtrueu o      ���� &0 minuteleadingzero minuteLeadingZeros v��v r  ��wxw \  ��yzy o  ������ &0 timestorelocation timeStoreLocationz m  ������ x o      ���� &0 timestorelocation timeStoreLocation��  �  K k  �?{{ |}| l ����~��  ~ &   Otherwise, get the numbers only    ��� @   O t h e r w i s e ,   g e t   t h e   n u m b e r s   o n l y} ��� Q  � ���� r  ���� c  ���� l ������� n  ���� 4   ���
�� 
cobj� o  ���� &0 timestorelocation timeStoreLocation� o  � ���� 0 	inputlist 	inputList��  ��  � m  
��
�� 
nmbr� o      ���� 0 tempnum tempNum� R      ������
�� .ascrerr ****      � ****��  ��  � r   ��� \  ��� o  ���� &0 timestorelocation timeStoreLocation� m  ���� � o      ���� &0 timestorelocation timeStoreLocation� ��� Z !5������� >  !&��� o  !$���� 0 tempnum tempNum� m  $%����  � r  )1��� o  ),���� 0 tempnum tempNum� l     ������ n      ���  ;  /0� o  ,/���� 0 numlist numList��  ��  ��  ��  � ���� r  6?��� \  6;��� o  69���� &0 timestorelocation timeStoreLocation� m  9:���� � o      ���� &0 timestorelocation timeStoreLocation��  �  A R      ������
�� .ascrerr ****      � ****��  ��  �  ? ?  ����� o  ������ &0 timestorelocation timeStoreLocation� m  ������  = ��� l NN��������  ��  ��  � ��� l NN������  � I C Reverse it so the order is from biggest to smallest time increment   � ��� �   R e v e r s e   i t   s o   t h e   o r d e r   i s   f r o m   b i g g e s t   t o   s m a l l e s t   t i m e   i n c r e m e n t� ��� r  NY��� n  NU��� 1  QU��
�� 
rvse� o  NQ���� 0 numlist numList� o      ���� 0 numlist numList� ��� l ZZ������  �  �  � ��� Z  Z����� F  Zg��� l Z]���� = Z]��� o  Z[�� 0 
monthfound 
monthFound� m  [\��  �  �  � l `c���� = `c��� o  `a�� 0 weekdayfound weekdayFound� m  ab��  �  �  � k  j9�� ��� l jj����  � * $ If the user gave a relative date...   � ��� H   I f   t h e   u s e r   g a v e   a   r e l a t i v e   d a t e . . .� ��� O  j���� k  n��� ��� r  nz��� H  nx�� n nw��� I  ow���� (0 isnumberidentifier isNumberIdentifier� ��� m  or�� ���  d� ���  g  rs�  �  �  f  no� o      �� 0 daysmissing daysMissing� ��� r  {���� H  {��� n {���� I  |����� (0 isnumberidentifier isNumberIdentifier� ��� m  |�� ���  w� ���  g  ��  �  �  f  {|� o      �� 0 weeksmissing weeksMissing� ��� Z ������� =  ����� l ������ \  ����� \  ����� o  ���� 00 howmanynumbersinputted howManyNumbersInputted� l ������ c  ����� l ������ H  ���� o  ���� 0 daysmissing daysMissing�  �  � m  ���
� 
long�  �  � l ������ c  ����� l ������ H  ���� o  ���� 0 weeksmissing weeksMissing�  �  � m  ���
� 
long�  �  �  �  � m  ����  � r  ����� m  ���
� boovtrue� o      �� 0 timemissing timeMissing�  �  �  � o  jk�� 0 datedesired dateDesired� ��� l ������  �  �  � ��� l ��� �       Figure out how many weeks    � 4   F i g u r e   o u t   h o w   m a n y   w e e k s�  Z  ��� H  �� o  ���� 0 weeksmissing weeksMissing r  ��	
	 n  �� 4  ���
� 
cobj m  ����  o  ���� 0 numlist numList
 o      �� 0 weeksdeferred weeksDeferred�   r  �� m  ����   o      �� 0 weeksdeferred weeksDeferred  l ������  �  �    l ����     Figure out how many days    � 2   F i g u r e   o u t   h o w   m a n y   d a y s  Z  ��� H  �� o  ���� 0 daysmissing daysMissing r  �� I  ����� 0 howmanydays howManyDays  !  o  ���� 0 numlist numList! "�" o  ���� 0 weeksmissing weeksMissing�  �   o      �� 0 daysdeferred daysDeferred�   Z  ��#$�~%# E  ��&'& o  ���}�} 0 datedesired dateDesired' m  ��(( �))  T o m o r r o w$ k  ��** +,+ l ���|-.�|  - - ' Special case where they put "tomorrow"   . �// N   S p e c i a l   c a s e   w h e r e   t h e y   p u t   " t o m o r r o w ", 0�{0 r  ��121 m  ���z�z 2 o      �y�y 0 daysdeferred daysDeferred�{  �~  % k  ��33 454 l ���x67�x  6 1 + If they exclude it entirely or put "Today"   7 �88 V   I f   t h e y   e x c l u d e   i t   e n t i r e l y   o r   p u t   " T o d a y "5 9�w9 r  ��:;: m  ���v�v  ; o      �u�u 0 daysdeferred daysDeferred�w   <=< l ���t�s�r�t  �s  �r  = >?> l ���q@A�q  @   Figure out the time   A �BB (   F i g u r e   o u t   t h e   t i m e? CDC r  ��EFE I  ���pG�o�p $0 figureoutthetime figureOutTheTimeG HIH o  ���n�n 0 numlist numListI JKJ o  ���m�m 0 timemissing timeMissingK LML o  ���l�l 0 daysmissing daysMissingM NON o  ���k�k 0 weeksmissing weeksMissingO P�jP o  ���i�i &0 minuteleadingzero minuteLeadingZero�j  �o  F o      �h�h $0 timedeferredtemp timeDeferredTempD QRQ l ���gST�g  S 3 - Understand the meaning of the time component   T �UU Z   U n d e r s t a n d   t h e   m e a n i n g   o f   t h e   t i m e   c o m p o n e n tR VWV r  �XYX I  �	�fZ�e�f &0 understandthetime understandTheTimeZ [\[ o  ��d�d $0 timedeferredtemp timeDeferredTemp\ ]^] o  �c�c 0 inthe inThe^ _�b_ o  �a�a 0 timemissing timeMissing�b  �e  Y o      �`�` 0 timedeferred timeDeferredW `a` l �_�^�]�_  �^  �]  a bcb l �\de�\  d G A Creating the time deferred based on minutes and hours calculated   e �ff �   C r e a t i n g   t h e   t i m e   d e f e r r e d   b a s e d   o n   m i n u t e s   a n d   h o u r s   c a l c u l a t e dc ghg Z  7ij�[ki @  lml o  �Z�Z 0 timedeferred timeDeferredm m  �Y�Y  j r  -non [  )pqp [  !rsr o  �X�X 0 timedeferred timeDeferreds ]   tut o  �W�W 0 daysdeferred daysDeferredu 1  �V
�V 
daysq ]  !(vwv o  !$�U�U 0 weeksdeferred weeksDeferredw 1  $'�T
�T 
weeko o      �S�S &0 totaltimedeferred totalTimeDeferred�[  k r  07xyx o  03�R�R 0 timedeferred timeDeferredy o      �Q�Q &0 totaltimedeferred totalTimeDeferredh z{z l 88�P|}�P  | %  end of relative date-only code   } �~~ >   e n d   o f   r e l a t i v e   d a t e - o n l y   c o d e{ �O l 88�N�M�L�N  �M  �L  �O  � ��� F  <I��� l <?��K�J� ?  <?��� o  <=�I�I 0 weekdayfound weekdayFound� m  =>�H�H  �K  �J  � l BE��G�F� = BE��� o  BC�E�E 0 
monthfound 
monthFound� m  CD�D�D  �G  �F  � ��C� k  L��� ��� Z L_���B�A� A  LU��� n  LS��� 1  OS�@
�@ 
leng� o  LO�?�? 0 numlist numList� m  ST�>�> � r  X[��� m  XY�=
�= boovtrue� o      �<�< 0 timemissing timeMissing�B  �A  � ��� l ``�;���;  � F @ Same as if the day and the week were missing on a relative date   � ��� �   S a m e   a s   i f   t h e   d a y   a n d   t h e   w e e k   w e r e   m i s s i n g   o n   a   r e l a t i v e   d a t e� ��� r  `p��� I  `l�:��9�: $0 figureoutthetime figureOutTheTime� ��� o  ad�8�8 0 numlist numList� ��� o  de�7�7 0 timemissing timeMissing� ��� m  ef�6
�6 boovtrue� ��� m  fg�5
�5 boovtrue� ��4� o  gh�3�3 &0 minuteleadingzero minuteLeadingZero�4  �9  � o      �2�2 $0 timedeferredtemp timeDeferredTemp� ��� r  q���� I  q}�1��0�1 &0 understandthetime understandTheTime� ��� o  ru�/�/ $0 timedeferredtemp timeDeferredTemp� ��� o  ux�.�. 0 inthe inThe� ��-� o  xy�,�, 0 timemissing timeMissing�-  �0  � o      �+�+ 0 timedeferred timeDeferred� ��� r  ����� I  ���*��)�* 00 daysfromtodaytoweekday daysFromTodayToWeekday� ��(� o  ���'�' 0 weekdayfound weekdayFound�(  �)  � o      �&�& 0 daysdeferred daysDeferred� ��%� Z  �����$�� @  ����� o  ���#�# 0 timedeferred timeDeferred� m  ���"�"  � r  ����� [  ����� ]  ����� o  ���!�! 0 daysdeferred daysDeferred� 1  ��� 
�  
days� o  ���� 0 timedeferred timeDeferred� o      �� &0 totaltimedeferred totalTimeDeferred�$  � r  ����� o  ���� 0 timedeferred timeDeferred� o      �� &0 totaltimedeferred totalTimeDeferred�%  �C  � k  ��� ��� l ������  � + % If the user gave an absolute date...   � ��� J   I f   t h e   u s e r   g a v e   a n   a b s o l u t e   d a t e . . .� ��� Z ������� A  ����� n  ����� 1  ���
� 
leng� o  ���� 0 numlist numList� m  ���� � r  ����� m  ���
� boovtrue� o      �� 0 timemissing timeMissing�  �  � ��� l ������  � G A Same as if the day were there but week wasn't on a relative date   � ��� �   S a m e   a s   i f   t h e   d a y   w e r e   t h e r e   b u t   w e e k   w a s n ' t   o n   a   r e l a t i v e   d a t e� ��� r  ����� I  ������ $0 figureoutthetime figureOutTheTime� ��� o  ���� 0 numlist numList� ��� o  ���� 0 timemissing timeMissing� ��� m  ���
� boovfals� ��� m  ���
� boovtrue� ��� o  ���� &0 minuteleadingzero minuteLeadingZero�  �  � o      �
�
 $0 timedeferredtemp timeDeferredTemp� ��� r  ����� I  ���	���	 &0 understandthetime understandTheTime� ��� o  ���� $0 timedeferredtemp timeDeferredTemp� ��� o  ���� 0 inthe inThe� ��� o  ���� 0 timemissing timeMissing�  �  � o      �� 0 timedeferred timeDeferred� ��� r  ����� I  ������ 40 figuringtimetodesiredday figuringTimeToDesiredDay� ��� o  ��� �  0 
monthfound 
monthFound� ���� l �������� n  ����� 4  �����
�� 
cobj� m  ������ � o  ������ 0 numlist numList��  ��  ��  �  � o      ���� 60 timefromtodayuntildesired timeFromTodayUntilDesired�  ��  Z  ��� @  �� o  ������ 0 timedeferred timeDeferred m  ������   r   [  		 o  ���� 60 timefromtodayuntildesired timeFromTodayUntilDesired	 o  ���� 0 timedeferred timeDeferred o      ���� &0 totaltimedeferred totalTimeDeferred��   r  

 o  ���� 0 timedeferred timeDeferred o      ���� &0 totaltimedeferred totalTimeDeferred��  �  l ��������  ��  ��    L   o  ���� &0 totaltimedeferred totalTimeDeferred �� l ��������  ��  ��  ��  �  l     ��������  ��  ��    l     ��������  ��  ��    i   � � I      ������ (0 isnumberidentifier isNumberIdentifier  o      ���� (0 possibleidentifier possibleIdentifier �� o      ���� "0 containerstring containerString��  ��   k     �   r     !"! m     ��
�� boovtrue" o      ���� $0 numberidentifier numberIdentifier  #$# r    %&% m    ��
�� boovfals& o      ���� 20 identifierisincontainer identifierIsInContainer$ '(' r    )*) m    	����  * o      ���� 40 positionoflastidentifier positionOfLastIdentifier( +,+ r    -.- n    /0/ 2    ��
�� 
cha 0 o    ���� "0 containerstring containerString. o      ���� 0 charlist charList, 121 l   ��������  ��  ��  2 343 Y    85��67��5 Z    389����8 =    %:;: l   #<����< n    #=>= 4     #��?
�� 
cobj? o   ! "���� 0 i  > o     ���� 0 charlist charList��  ��  ; o   # $���� (0 possibleidentifier possibleIdentifier9 k   ( /@@ ABA r   ( +CDC m   ( )��
�� boovtrueD o      ���� 20 identifierisincontainer identifierIsInContainerB E��E r   , /FGF o   , -���� 0 i  G o      ���� 40 positionoflastidentifier positionOfLastIdentifier��  ��  ��  �� 0 i  6 m    ���� 7 l   H���H n    IJI 1    �
� 
lengJ o    �� 0 charlist charList��  �  ��  4 KLK l  9 9����  �  �  L MNM Z   9 OP�QO G   9 DRSR l  9 <T��T =  9 <UVU o   9 :�� 40 positionoflastidentifier positionOfLastIdentifierV m   : ;��  �  �  S l  ? BW��W =  ? BXYX o   ? @�� 40 positionoflastidentifier positionOfLastIdentifierY m   @ A�� �  �  P r   G JZ[Z m   G H�
� boovfals[ o      �� $0 numberidentifier numberIdentifier�  Q k   M \\ ]^] r   M U_`_ n   M Saba 4   N S�c
� 
cha c l  O Rd��d \   O Refe o   O P�� 40 positionoflastidentifier positionOfLastIdentifierf m   P Q�� �  �  b o   M N�� "0 containerstring containerString` o      �� "0 characterbefore characterBefore^ ghg Q   V gij�i r   Y ^klk c   Y \mnm o   Y Z�� "0 characterbefore characterBeforen m   Z [�
� 
longl o      �� "0 characterbefore characterBeforej R      ���
� .ascrerr ****      � ****�  �  �  h o�o Z  h pq��p F   h ursr l  h kt��t >  h kuvu o   h i�� "0 characterbefore characterBeforev m   i jww �xx   �  �  s l  n sy��y >  n sz{z n   n q|}| m   o q�
� 
pcls} o   n o�� "0 characterbefore characterBefore{ m   q r�
� 
long�  �  q r   x {~~ m   x y�
� boovfals o      �� $0 numberidentifier numberIdentifier�  �  �  N ��� L   � ��� o   � ��� $0 numberidentifier numberIdentifier�   ��� l     �����  �  ��  � ��� l     ��������  ��  ��  � ��� i   � ���� I      ������� 0 howmanydays howManyDays� ��� o      ���� 0 numlist numList� ���� o      ���� 0 weeksmissing weeksMissing��  ��  � k     �� ��� Z     ������ H     �� o     ���� 0 weeksmissing weeksMissing� r    ��� n    	��� 4    	���
�� 
cobj� m    ���� � o    ���� 0 numlist numList� o      ���� 0 daysdeferred daysDeferred��  � r    ��� n    ��� 4    ���
�� 
cobj� m    �� � o    �~�~ 0 numlist numList� o      �}�} 0 daysdeferred daysDeferred� ��|� L    �� o    �{�{ 0 daysdeferred daysDeferred�|  � ��� l     �z�y�x�z  �y  �x  � ��� l     �w�v�u�w  �v  �u  � ��� i   � ���� I      �t��s�t $0 figureoutthetime figureOutTheTime� ��� o      �r�r 0 numlist numList� ��� o      �q�q 0 timemissing timeMissing� ��� o      �p�p 0 daysmissing daysMissing� ��� o      �o�o 0 weeksmissing weeksMissing� ��n� o      �m�m &0 minuteleadingzero minuteLeadingZero�n  �s  � k     <�� ��� Z     9���l�� H     �� o     �k�k 0 timemissing timeMissing� Z    3���j�� o    �i�i &0 minuteleadingzero minuteLeadingZero� r   	 ��� n   	 ��� 4   
 �h�
�h 
cobj� m    �g�g��� o   	 
�f�f 0 numlist numList� o      �e�e $0 timedeferredtemp timeDeferredTemp�j  � k    3�� ��� r    ��� m    �� ���  � 1    �d
�d 
txdl� ��c� r    3��� c    1��� l   /��b�a� c    /��� l   -��`�_� n    -��� 7   -�^��
�^ 
cobj� m    �]�]��� l    ,��\�[� [     ,��� [   ! '��� m   ! "�Z�Z � l  " &��Y�X� c   " &��� l  " $��W�V� H   " $�� o   " #�U�U 0 daysmissing daysMissing�W  �V  � m   $ %�T
�T 
long�Y  �X  � l 	 ' +��S�R� l  ' +��Q�P� c   ' +��� l  ' )��O�N� H   ' )�� o   ' (�M�M 0 weeksmissing weeksMissing�O  �N  � m   ) *�L
�L 
long�Q  �P  �S  �R  �\  �[  � o    �K�K 0 numlist numList�`  �_  � m   - .�J
�J 
ctxt�b  �a  � m   / 0�I
�I 
long� o      �H�H $0 timedeferredtemp timeDeferredTemp�c  �l  � r   6 9��� m   6 7�G�G  � o      �F�F $0 timedeferredtemp timeDeferredTemp� ��E� L   : <�� o   : ;�D�D $0 timedeferredtemp timeDeferredTemp�E  � ��� l     �C�B�A�C  �B  �A  � ��� l     �@�?�>�@  �?  �>  � ��� i  � ���� I      �=��<�= &0 understandthetime understandTheTime� ��� o      �;�; $0 timedeferredtemp timeDeferredTemp� ��� o      �:�: 0 inthe inThe� ��9� o      �8�8 0 timemissing timeMissing�9  �<  � k     ��� ��� Z     ����7�� o     �6�6 0 timemissing timeMissing� r    ��� m    �5�5  � o      �4�4 0 timedeferred timeDeferred�7  � Z   
 � �3  ?   
  o   
 �2�2 $0 timedeferredtemp timeDeferredTemp m    �1�1	` k      l   �0	�0   7 1 If the time is greater than the 24 hour clock...   	 �

 b   I f   t h e   t i m e   i s   g r e a t e r   t h a n   t h e   2 4   h o u r   c l o c k . . .  I   �/�.
�/ .sysodisAaleR        TEXT m     � � P l e a s e   t r y   a g a i n :   t h e   t i m e   y o u   e n t e r e d   w a s   n o t   a   v a l i d   t i m e   o f   d a y .�.    r     m    �-�-�� o      �,�, 0 timedeferred timeDeferred �+ l   �*�)�(�*  �)  �(  �+    =    ! o    �'�' $0 timedeferredtemp timeDeferredTemp m     �&�&	`  k   $ )  l  $ $�%�%   &   If the time is equal to 2400...    �   @   I f   t h e   t i m e   i s   e q u a l   t o   2 4 0 0 . . . !"! r   $ '#$# 1   $ %�$
�$ 
days$ o      �#�# 0 timedeferred timeDeferred" %�"% l  ( (�!� ��!  �   �  �"   &'& @   , /()( o   , -�� $0 timedeferredtemp timeDeferredTemp) m   - .�� d' *+* k   2 �,, -.- l  2 2�/0�  / p j if they entered the time as a full hour:minute pair (with or without AM/PM and with or without the colon)   0 �11 �   i f   t h e y   e n t e r e d   t h e   t i m e   a s   a   f u l l   h o u r : m i n u t e   p a i r   ( w i t h   o r   w i t h o u t   A M / P M   a n d   w i t h   o r   w i t h o u t   t h e   c o l o n ). 232 r   2 E454 l  2 C6��6 c   2 C787 l  2 A9��9 c   2 A:;: l  2 ?<��< n   2 ?=>= 7  5 ?�?@
� 
cha ? m   9 ;����@ m   < >����> l  2 5A��A c   2 5BCB o   2 3�� $0 timedeferredtemp timeDeferredTempC m   3 4�
� 
ctxt�  �  �  �  ; m   ? @�
� 
ctxt�  �  8 m   A B�
� 
long�  �  5 o      �� "0 minutesdeferred minutesDeferred3 DED r   F YFGF l  F WH��
H c   F WIJI l  F UK�	�K c   F ULML l  F SN��N n   F SOPO 7  I S�QR
� 
cha Q m   M O�� R m   P R����P l  F IS��S c   F ITUT o   F G� �  $0 timedeferredtemp timeDeferredTempU m   G H��
�� 
ctxt�  �  �  �  M m   S T��
�� 
ctxt�	  �  J m   U V��
�� 
long�  �
  G o      ���� 0 hoursdeferred hoursDeferredE VWV l  Z Z��XY��  X Z T Figuring out the minutes and hours in the time given (minutes are last two numbers)   Y �ZZ �   F i g u r i n g   o u t   t h e   m i n u t e s   a n d   h o u r s   i n   t h e   t i m e   g i v e n   ( m i n u t e s   a r e   l a s t   t w o   n u m b e r s )W [\[ l  Z Z��������  ��  ��  \ ]^] Z   Z �_`ab_ =   Z ]cdc o   Z [���� 0 inthe inThed m   [ \ee �ff  P M` k   ` kgg hih l  ` `��jk��  j 3 - For any number specifically designated as PM   k �ll Z   F o r   a n y   n u m b e r   s p e c i f i c a l l y   d e s i g n a t e d   a s   P Mi m��m r   ` knon l  ` ip����p [   ` iqrq ]   ` ests l  ` cu����u [   ` cvwv o   ` a���� 0 hoursdeferred hoursDeferredw m   a b���� ��  ��  t 1   c d��
�� 
hourr ]   e hxyx o   e f���� "0 minutesdeferred minutesDeferredy 1   f g��
�� 
min ��  ��  o o      ���� 0 timedeferred timeDeferred��  a z{z F   n y|}| =   n q~~ o   n o���� 0 hoursdeferred hoursDeferred m   o p���� } =   t w��� o   t u���� 0 inthe inThe� m   u v�� ���  A M{ ���� k   | ��� ��� l  | |������  �   For 12:00AM exactly   � ��� (   F o r   1 2 : 0 0 A M   e x a c t l y� ���� r   | ���� ]   | ��� o   | }���� "0 minutesdeferred minutesDeferred� 1   } ~��
�� 
min � o      ���� 0 timedeferred timeDeferred��  ��  b k   � ��� ��� l  � �������  � \ V For times in the AM (implicit or explicit) and explicit times in the PM (i.e., 16:00)   � ��� �   F o r   t i m e s   i n   t h e   A M   ( i m p l i c i t   o r   e x p l i c i t )   a n d   e x p l i c i t   t i m e s   i n   t h e   P M   ( i . e . ,   1 6 : 0 0 )� ���� r   � ���� l  � ������� [   � ���� ]   � ���� o   � ����� 0 hoursdeferred hoursDeferred� 1   � ���
�� 
hour� ]   � ���� o   � ����� "0 minutesdeferred minutesDeferred� 1   � ���
�� 
min ��  ��  � o      ���� 0 timedeferred timeDeferred��  ^ ���� l  � ���������  ��  ��  ��  + ��� ?   � ���� o   � ����� $0 timedeferredtemp timeDeferredTemp� m   � ����� � ��� k   � ��� ��� l  � �������  � ; 5 If they entered the time as a single number above 24   � ��� j   I f   t h e y   e n t e r e d   t h e   t i m e   a s   a   s i n g l e   n u m b e r   a b o v e   2 4� ��� I  � ������
�� .sysodisAaleR        TEXT� m   � ��� ��� � P l e a s e   t r y   a g a i n :   t h e   t i m e   y o u   e n t e r e d   w a s   n o t   a   v a l i d   t i m e   o f   d a y .��  � ��� r   � ���� m   � �������� o      ���� 0 timedeferred timeDeferred� ���� l  � ���������  ��  ��  ��  � ��� B   � ���� o   � ����� $0 timedeferredtemp timeDeferredTemp� m   � ����� � ���� k   � ��� ��� l  � �������  � J D If the entered the time as a single number (with or without AM/PM)	   � ��� �   I f   t h e   e n t e r e d   t h e   t i m e   a s   a   s i n g l e   n u m b e r   ( w i t h   o r   w i t h o u t   A M / P M ) 	� ���� Z   � ������ =   � ���� o   � ����� $0 timedeferredtemp timeDeferredTemp� m   � ����� � k   � ��� ��� l  � �������  � E ? If they entered 24 hours exactly (treat as a full extra delay)   � ��� ~   I f   t h e y   e n t e r e d   2 4   h o u r s   e x a c t l y   ( t r e a t   a s   a   f u l l   e x t r a   d e l a y )� ���� r   � ���� 1   � ���
�� 
days� o      �� 0 timedeferred timeDeferred��  � ��� F   � ���� l  � ����� =   � ���� o   � ��� $0 timedeferredtemp timeDeferredTemp� m   � ��� �  �  � l  � ����� >   � ���� o   � ��� 0 inthe inThe� m   � ��� ���  A M�  �  � ��� k   � ��� ��� l  � �����  � . ( If they entered "12" (treat it as 12PM)   � ��� P   I f   t h e y   e n t e r e d   " 1 2 "   ( t r e a t   i t   a s   1 2 P M )� ��� r   � ���� ]   � ���� m   � ��� � 1   � ��
� 
hour� o      �� 0 timedeferred timeDeferred�  � ��� G   � ���� l  � ����� @   � ���� o   � ��� $0 timedeferredtemp timeDeferredTemp� m   � ��� �  �  � l  � ����� >   � ���� o   � ��� 0 inthe inThe� m   � ��� ���  P M�  �  � ��� k   � ��� ��� l  � �����  � G A For implicit and explicit AM entries and for implicit PM entries   � ��� �   F o r   i m p l i c i t   a n d   e x p l i c i t   A M   e n t r i e s   a n d   f o r   i m p l i c i t   P M   e n t r i e s� ��� r   � �� � ]   � � o   � ��� $0 timedeferredtemp timeDeferredTemp 1   � ��
� 
hour  o      �� 0 timedeferred timeDeferred�  �  � k   � �  l  � ���     For explicit PM entries    � 0   F o r   e x p l i c i t   P M   e n t r i e s 	�	 r   � �

 ]   � � l  � ��� [   � � o   � ��� $0 timedeferredtemp timeDeferredTemp m   � ��� �  �   1   � ��
� 
hour o      �� 0 timedeferred timeDeferred�  ��  ��  �3  � � L   � � o   � ��� 0 timedeferred timeDeferred�  �  l     ����  �  �    l     ����  �  �    i  � � I      ��� 40 figuringtimetodesiredday figuringTimeToDesiredDay  o      �� 0 monthdesired monthDesired � o      �� 0 
daydesired 
dayDesired�  �   k     ;  !  r     "#" l    $��$ I    ���
� .misccurdldt    ��� null�  �  �  �  # o      �� 0 
todaysdate 
todaysDate! %&% r    '(' m    	��  ( n      )*) 1   
 �
� 
time* o   	 
�� 0 
todaysdate 
todaysDate& +,+ l   �-.�  - %  Creating an intial date object   . �// >   C r e a t i n g   a n   i n t i a l   d a t e   o b j e c t, 010 s    232 o    �� 0 
todaysdate 
todaysDate3 o      �� $0 exactdesireddate exactDesiredDate1 454 r    676 o    �� 0 
daydesired 
dayDesired7 l     8��8 n      9:9 1    �
� 
day : o    �� $0 exactdesireddate exactDesiredDate�  �  5 ;<; r    =>= o    �� 0 monthdesired monthDesired> l     ?�~�}? n      @A@ m    �|
�| 
mnthA o    �{�{ $0 exactdesireddate exactDesiredDate�~  �}  < BCB Z    6DE�z�yD A    &FGF o     �x�x $0 exactdesireddate exactDesiredDateG l    %H�w�vH I    %�u�t�s
�u .misccurdldt    ��� null�t  �s  �w  �v  E r   ) 2IJI l  ) .K�r�qK [   ) .LML l  ) ,N�p�oN n   ) ,OPO 1   * ,�n
�n 
yearP o   ) *�m�m 0 
todaysdate 
todaysDate�p  �o  M m   , -�l�l �r  �q  J l     Q�k�jQ n      RSR 1   / 1�i
�i 
yearS o   . /�h�h $0 exactdesireddate exactDesiredDate�k  �j  �z  �y  C T�gT L   7 ;UU l  7 :V�f�eV \   7 :WXW o   7 8�d�d $0 exactdesireddate exactDesiredDateX o   8 9�c�c 0 
todaysdate 
todaysDate�f  �e  �g   YZY l     �b�a�`�b  �a  �`  Z [\[ l     �_�^�]�_  �^  �]  \ ]^] i   � �_`_ I      �\a�[�\ 00 daysfromtodaytoweekday daysFromTodayToWeekdaya b�Zb o      �Y�Y  0 weekdaydesired weekdayDesired�Z  �[  ` k     0cc ded r     fgf c     	hih l    j�X�Wj n     klk m    �V
�V 
wkdyl l    m�U�Tm I    �S�R�Q
�S .misccurdldt    ��� null�R  �Q  �U  �T  �X  �W  i m    �P
�P 
longg o      �O�O  0 currentweekday currentWeekdaye non Z    -pqrsp =    tut o    �N�N  0 currentweekday currentWeekdayu o    �M�M  0 weekdaydesired weekdayDesiredq r    vwv m    �L�L  w o      �K�K 0 daysdeferred daysDeferredr xyx A    z{z o    �J�J  0 currentweekday currentWeekday{ o    �I�I  0 weekdaydesired weekdayDesiredy |�H| r    #}~} \    !� o    �G�G  0 weekdaydesired weekdayDesired� o     �F�F  0 currentweekday currentWeekday~ o      �E�E 0 daysdeferred daysDeferred�H  s r   & -��� \   & +��� [   & )��� m   & '�D�D � o   ' (�C�C  0 weekdaydesired weekdayDesired� o   ) *�B�B  0 currentweekday currentWeekday� o      �A�A 0 daysdeferred daysDeferredo ��@� L   . 0�� o   . /�?�? 0 daysdeferred daysDeferred�@  ^ ��� l     �>�=�<�>  �=  �<  � ��� i   � ���� I      �;��:�; 00 understandabsolutedate understandAbsoluteDate� ��9� o      �8�8 0 thetext theText�9  �:  � k    �� ��� r     ��� l    ��7�6� I    �5�4�3
�5 .misccurdldt    ��� null�4  �3  �7  �6  � o      �2�2 0 thedate theDate� ��� r    ��� m    	�1�1 � l     ��0�/� n      ��� 1   
 �.
�. 
day � o   	 
�-�- 0 thedate theDate�0  �/  � ��� r    ��� m    �,�, � l     ��+�*� n      ��� m    �)
�) 
mnth� o    �(�( 0 thedate theDate�+  �*  � ��� r    ��� l   ��'�&� \    ��� o    �%�% 0 thedate theDate� ]    ��� m    �$�$ � 1    �#
�# 
days�'  �&  � o      �"�" 0 thedate theDate� ��� r    !��� n    ��� 1    �!
�! 
shdt� o    � �  0 thedate theDate� o      �� 0 thedate theDate� ��� l  " "����  �  �  � ��� r   " /��� J   " +�� ��� m   " #�� ���  .� ��� m   # $�� ���  -� ��� m   $ %�� ���  /� ��� m   % &�� ���  � ��� m   & '�� ���  � ��� m   ' (�� ���  |� ��� m   ( )�� ���  \�  � 1   + .�
� 
txdl� ��� r   0 5��� n   0 3��� 2   1 3�
� 
citm� o   0 1�� 0 thedate theDate� o      �� 0 thedate theDate� ��� r   6 F��� K   6 D�� ���� 0 theday theDay� m   7 8��  � ���� 0 themonth theMonth� m   ; <��  � ���� 0 theyear theYear� m   ? @��  �  � o      �� 0 thepositions thePositions� ��� l  G G����  �  �  � ��� l  G G����  � S M Checks the positions of the date components based on January 31 of this year   � ��� �   C h e c k s   t h e   p o s i t i o n s   o f   t h e   d a t e   c o m p o n e n t s   b a s e d   o n   J a n u a r y   3 1   o f   t h i s   y e a r� ��� Y   G ���
���	� O   V ���� Z   _ ������ E  _ d��� m   _ b�� ���  0 1�  g   b c� r   g n��� o   g h�� 0 i  � l     ���� n     � � o   i m�� 0 themonth theMonth  o   h i�� 0 thepositions thePositions�  �  �  E  q v m   q t �  3 1  g   t u � r   y ~	 o   y z�� 0 i  	 l     
�� 
 n      o   { }���� 0 theday theDay o   z {���� 0 thepositions thePositions�  �   �  � r   � � o   � ����� 0 i   l     ���� n      o   � ����� 0 theyear theYear o   � ����� 0 thepositions thePositions��  ��  � n   V \ 4   W \��
�� 
cobj o   Z [���� 0 i   o   V W���� 0 thedate theDate�
 0 i  � m   J K���� � l  K Q���� n   K Q 1   L P��
�� 
leng o   K L���� 0 thedate theDate��  ��  �	  �  l  � ���������  ��  ��    r   � � n   � � 2   � ���
�� 
citm o   � ����� 0 thetext theText o      ���� 0 thetext theText  !  l  � ���������  ��  ��  ! "#" r   � �$%$ l  � �&����& I  � �������
�� .misccurdldt    ��� null��  ��  ��  ��  % o      ���� 0 
targetdate 
targetDate# '(' r   � �)*) m   � �����  * n      +,+ 1   � ���
�� 
time, o   � ����� 0 
targetdate 
targetDate( -.- Z   �/0��1/ F   � �232 l  � �4����4 >  � �565 n   � �787 1   � ���
�� 
leng8 o   � ����� 0 thetext theText6 m   � ����� ��  ��  3 l  � �9����9 >  � �:;: n   � �<=< 1   � ���
�� 
leng= o   � ����� 0 thetext theText; m   � ����� ��  ��  0 k   � �>> ?@? l  � ���AB��  A ; 5 If they don't input at 2-3 numbers, return the error   B �CC j   I f   t h e y   d o n ' t   i n p u t   a t   2 - 3   n u m b e r s ,   r e t u r n   t h e   e r r o r@ D��D L   � �EE m   � ���������  ��  1 k   �FF GHG Z   � �IJ��KI =  � �LML n   � �NON 1   � ���
�� 
lengO o   � ����� 0 thetext theTextM m   � ����� J k   � �PP QRQ l  � ���ST��  S %  If the input has three numbers   T �UU >   I f   t h e   i n p u t   h a s   t h r e e   n u m b e r sR V��V r   � �WXW I   � ���Y���� 0 solvetheyear solveTheYearY Z��Z c   � �[\[ l  � �]����] n   � �^_^ 4   � ���`
�� 
cobj` l  � �a����a n   � �bcb o   � ����� 0 theyear theYearc o   � ����� 0 thepositions thePositions��  ��  _ o   � ����� 0 thetext theText��  ��  \ m   � ��
� 
nmbr��  ��  X l     d��d n      efe 1   � ��
� 
yearf o   � ��� 0 
targetdate 
targetDate�  �  ��  ��  K k   � �gg hih l  � ��jk�  j 7 1 If the input has two numbers (left out the year)   k �ll b   I f   t h e   i n p u t   h a s   t w o   n u m b e r s   ( l e f t   o u t   t h e   y e a r )i m�m r   � �non I   � ��p�� 40 adjustpositionsfornoyear adjustPositionsForNoYearp q�q o   � ��� 0 thepositions thePositions�  �  o o      �� 0 thepositions thePositions�  H rsr r   �tut c   �vwv l  � �x��x n   � �yzy 4   � ��{
� 
cobj{ l  � �|��| n   � �}~} o   � ��� 0 themonth theMonth~ o   � ��� 0 thepositions thePositions�  �  z o   � ��� 0 thetext theText�  �  w m   � �
� 
nmbru l     �� n      ��� m  �
� 
mnth� o  �� 0 
targetdate 
targetDate�  �  s ��� r  ��� c  ��� l ���� n  ��� 4  ��
� 
cobj� l 
���� n  
��� o  �� 0 theday theDay� o  
�� 0 thepositions thePositions�  �  � o  �� 0 thetext theText�  �  � m  �
� 
nmbr� l     ���� n      ��� 1  �
� 
day � o  �� 0 
targetdate 
targetDate�  �  �  . ��� L  �� o  �� 0 
targetdate 
targetDate�  � ��� l     ����  �  �  � ��� i  � ���� I      ���� 40 adjustpositionsfornoyear adjustPositionsForNoYear� ��� o      �� 0 thepositions thePositions�  �  � k     J�� ��� Z     G����� =    ��� l    ���� n    ��� o    �� 0 theyear theYear� o     �� 0 thepositions thePositions�  �  � m    �� � k    �� ��� r    ��� \    ��� l   ���� n   ��� o   	 �� 0 themonth theMonth� o    	�� 0 thepositions thePositions�  �  � m    �� � l     ���� n     ��� o    �� 0 themonth theMonth� o    �� 0 thepositions thePositions�  �  � ��� r    ��� \    ��� l   ���~� n   ��� o    �}�} 0 theday theDay� o    �|�| 0 thepositions thePositions�  �~  � m    �{�{ � l     ��z�y� n     ��� o    �x�x 0 theday theDay� o    �w�w 0 thepositions thePositions�z  �y  �  � ��� =   !��� o    �v�v 0 yearposition yearPosition� m     �u�u � ��t� Z   $ C���s�� A   $ +��� l  $ '��r�q� n  $ '��� o   % '�p�p 0 theday theDay� o   $ %�o�o 0 thepositions thePositions�r  �q  � l  ' *��n�m� n  ' *��� o   ( *�l�l 0 themonth theMonth� o   ' (�k�k 0 thepositions thePositions�n  �m  � r   . 7��� \   . 3��� l  . 1��j�i� n  . 1��� o   / 1�h�h 0 themonth theMonth� o   . /�g�g 0 thepositions thePositions�j  �i  � m   1 2�f�f � l     ��e�d� n     ��� o   4 6�c�c 0 themonth theMonth� o   3 4�b�b 0 thepositions thePositions�e  �d  �s  � r   : C��� \   : ?��� l  : =��a�`� n  : =��� o   ; =�_�_ 0 theday theDay� o   : ;�^�^ 0 thepositions thePositions�a  �`  � m   = >�]�] � l     ��\�[� n     ��� o   @ B�Z�Z 0 theday theDay� o   ? @�Y�Y 0 thepositions thePositions�\  �[  �t  �  � ��X� L   H J�� o   H I�W�W 0 thepositions thePositions�X  � ��� l     �V�U�T�V  �U  �T  � ��� i  � ���� I      �S��R�S 0 solvetheyear solveTheYear� ��Q� o      �P�P 0 num  �Q  �R  � Z     ���O�� @     ��� o     �N�N 0 num  � m    �M�M�� L    �� o    �L�L 0 num  �O  � L    �� l   ��K�J� [    ��� m    �I�I�� o    �H�H 0 num  �K  �J  � ��� l     �G�F�E�G  �F  �E  � ��� l     �D�C�B�D  �C  �B  � ��� i  � ���� I      �A��@�A 
0 notify  � � � o      �?�? 0 thetitle theTitle   o      �>�>  0 thedescription theDescription  o      �=�= 0 thetype theType �< o      �;�; 0 theurl theURL�<  �@  � Z     ��: @     		
	 n      1    �9
�9 
sisv l    �8�7 I    �6�5�4
�6 .sysosigtsirr   ��� null�5  �4  �8  �7  
 m     �  1 0 . 9 I   �3�2
�3 .sysonotfnull��� ��� TEXT�2   �1
�1 
appr o    �0�0 0 thetitle theTitle �/�.
�/ 
subt o    �-�-  0 thedescription theDescription�.  �:   k    �  O    1 r    0 ?    . l   ,�,�+ I   ,�*�)
�* .corecnte****       **** l   (�(�' 6   ( !  2    �&
�& 
prcs! =    '"#" 1   ! #�%
�% 
bnid# m   $ &$$ �%% 0 c o m . G r o w l . G r o w l H e l p e r A p p�(  �'  �)  �,  �+   m   , -�$�$   o      �#�# 0 	isrunning 	isRunning m    &&�                                                                                  sevs  alis    �  Macintosh HD               ͘L�H+   v<ySystem Events.app                                               zU�B3�        ����  	                CoreServices    ͗�.      �A�9     v<y v<v v<u  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   '�"' Z   2 �()�!� ( o   2 3�� 0 	isrunning 	isRunning) O   6 �*+* k   : �,, -.- I  : ]��/
� .registernull��� ��� null�  / �01
� 
appl0 o   < A�� "0 applicationname applicationName1 �23
� 
anot2 o   B G�� $0 allnotifications allNotifications3 �45
� 
dnot4 o   J O�� ,0 defaultnotifications defaultNotifications5 �6�
� 
iapp6 o   R W�� "0 iconapplication iconApplication�  . 7�7 Z   ^ �89�:8 =  ^ e;<; n   ^ c=>= 1   _ c�
� 
leng> o   ^ _�� 0 theurl theURL< m   c d��  9 I  h ���?
� .notifygrnull��� ��� null�  ? �@A
� 
name@ o   l m�� 0 thetype theTypeA �
BC
�
 
titlB o   p q�	�	 0 thetitle theTitleC �DE
� 
applD o   r w�� "0 applicationname applicationNameE �F�
� 
descF o   z {��  0 thedescription theDescription�  �  : l  � ��GH�  G } wnotify with name theType title theTitle application name applicationName description theDescription callback URL theURL   H �II � n o t i f y   w i t h   n a m e   t h e T y p e   t i t l e   t h e T i t l e   a p p l i c a t i o n   n a m e   a p p l i c a t i o n N a m e   d e s c r i p t i o n   t h e D e s c r i p t i o n   c a l l b a c k   U R L   t h e U R L�  + m   6 7JJ6                                                                                  GRRR  alis    �  Macintosh HD               ͘L�H+   �R�GrowlHelperApp.app                                              �R��{�        ����  	                	Resources     ͗�.      �$     �R� �R� �R� xW� v<�  ^Macintosh HD:Library: PreferencePanes: Growl.prefPane: Contents: Resources: GrowlHelperApp.app  &  G r o w l H e l p e r A p p . a p p    M a c i n t o s h   H D  LLibrary/PreferencePanes/Growl.prefPane/Contents/Resources/GrowlHelperApp.app  / ��  �!  �   �"  � KLK l     ��� �  �  �   L MNM i   � �OPO I      ��Q����  0 attachmentlist attachmentListQ RSR o      ���� 0 theid theIDS T��T o      ���� 0 theclass theClass��  ��  P k     �UU VWV r     XYX J     ����  Y o      ���� &0 theattachmentlist theAttachmentListW Z[Z O    �\]\ k    �^^ _`_ Z    Vab����a =   cdc o    ���� 0 theclass theClassd m    ee �ff  t a s kb O    Rghg k    Qii jkj r    lml m    nn ����
�� 
OSfA
�� 
nmbrm o      ���� ,0 numberoffileattached NumberOfFileAttachedk opo r     #qrq m     !���� r o      ���� 0 i  p s��s V   $ Qtut k   , Lvv wxw Z   , Fyz����y >  , 4{|{ n   , 2}~} 1   0 2��
�� 
OSin~ 4   , 0��
�� 
OSfA o   . /���� 0 i  | m   2 3��
�� boovtruez r   7 B��� c   7 ?��� n   7 =��� 1   ; =��
�� 
atfn� 4   7 ;���
�� 
OSfA� o   9 :���� 0 i  � m   = >��
�� 
TEXT� n      ���  ;   @ A� o   ? @���� &0 theattachmentlist theAttachmentList��  ��  x ���� r   G L��� [   G J��� o   G H���� 0 i  � m   H I���� � o      ���� 0 i  ��  u B   ( +��� o   ( )���� 0 i  � o   ) *���� ,0 numberoffileattached NumberOfFileAttached��  h n    ��� 1    ��
�� 
FCno� 5    �����
�� 
FCac� o    ���� 0 theid theID
�� kfrmID  ��  ��  ` ���� Z   W �������� =  W Z��� o   W X���� 0 theclass theClass� m   X Y�� ���  p r o j e c t� O   ] ���� k   g ��� ��� r   g j��� m   g h�� ����
�� 
OSfA
�� 
nmbr� o      ���� ,0 numberoffileattached NumberOfFileAttached� ��� r   k n��� m   k l���� � o      ���� 0 i  � ���� V   o ���� k   w ��� ��� Z   w �������� >  w ��� n   w }��� 1   { }��
�� 
OSin� 4   w {���
�� 
OSfA� o   y z���� 0 i  � m   } ~��
�� boovtrue� r   � ���� c   � ���� n   � ���� 1   � ���
�� 
atfn� 4   � ����
�� 
OSfA� o   � ����� 0 i  � m   � ���
�� 
TEXT� n      ���  ;   � �� o   � ����� &0 theattachmentlist theAttachmentList��  ��  � ���� r   � ���� [   � ���� o   � ����� 0 i  � m   � ����� � o      ���� 0 i  ��  � B   s v��� o   s t���� 0 i  � o   t u���� ,0 numberoffileattached NumberOfFileAttached��  � n   ] d��� 1   b d��
�� 
FCno� 5   ] b�����
�� 
FCpr� o   _ `���� 0 theid theID
�� kfrmID  ��  ��  ��  ] n    	��� 4   	���
�� 
docu� m    ���� � m    ���                                                                                  OFOC  alis    X  Macintosh HD               ͘L�H+   v<�OmniFocus.app                                                   ���ΞR        ����  	                Applications    ͗�.      Ν�     v<�  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  [ ���� L   � ��� o   � ����� &0 theattachmentlist theAttachmentList��  N ��� l     ��������  ��  ��  � ��� i   � ���� I      ������� $0 getridofdateinfo getRidOfDateInfo� ��� o      ���� "0 theoriginalnote theOriginalNote� ���� o      ���� 0 
dueorstart 
dueOrStart��  ��  � k     ��� ��� r     ��� l    ������ n     ��� 1    ��
�� 
leng� n     ��� 2   ��
�� 
cpar� o     ���� "0 theoriginalnote theOriginalNote��  ��  � o      ���� 0 numparagraphs numParagraphs� ��� Y    )�������� Z    $������� C    ��� n    ��� 4    ���
�� 
cpar� o    ���� 0 i  � o    ���� "0 theoriginalnote theOriginalNote� o    ���� 0 
dueorstart 
dueOrStart� k     �� ��� r    ��� o    ���� 0 i  � o      ���� 0 datespot dateSpot� ���  S     �  ��  ��  �� 0 i  � m    �� � o    �� 0 numparagraphs numParagraphs��  � ��� r   * 1��� J   * -�� ��� o   * +�
� 
ret �  � n     ��� 1   . 0�
� 
txdl�  f   - .� ��� Z   2 ������ =  2 5   o   2 3�� 0 datespot dateSpot m   3 4�� � Z   8 Y� =  8 A l  8 ?�� I  8 ?��
� .corecnte****       **** n   8 ;	
	 2  9 ;�
� 
cpar
 o   8 9�� "0 theoriginalnote theOriginalNote�  �  �   m   ? @��  r   D G m   D E �   o      �� 0 thenote theNote�   r   J Y c   J W l  J U�� n   J U 7  K U�
� 
cpar m   O Q��  m   R T���� l  J K�� o   J K�� "0 theoriginalnote theOriginalNote�  �  �  �   m   U V�
� 
TEXT o      �� 0 thenote theNote�  =  \ _ o   \ ]�� 0 datespot dateSpot o   ] ^�� 0 numparagraphs numParagraphs � r   b q c   b o !  l  b m"��" n   b m#$# l  c m%��~% 7  c m�}&'
�} 
cpar& m   g i�|�| ' m   j l�{�{���  �~  $ o   b c�z�z "0 theoriginalnote theOriginalNote�  �  ! m   m n�y
�y 
TEXT o      �x�x 0 thenote theNote�  � r   t �()( c   t �*+* l  t �,�w�v, b   t �-.- l  t �/�u�t/ n   t �010 l  u �2�s�r2 7  u ��q34
�q 
cpar3 m   y {�p�p 4 l  | �5�o�n5 \   | �676 o   } ~�m�m 0 datespot dateSpot7 m   ~ �l�l �o  �n  �s  �r  1 o   t u�k�k "0 theoriginalnote theOriginalNote�u  �t  . l  � �8�j�i8 n   � �9:9 l  � �;�h�g; 7  � ��f<=
�f 
cpar< l  � �>�e�d> [   � �?@? o   � ��c�c 0 datespot dateSpot@ m   � ��b�b �e  �d  = m   � ��a�a���h  �g  : o   � ��`�` "0 theoriginalnote theOriginalNote�j  �i  �w  �v  + m   � ��_
�_ 
TEXT) o      �^�^ 0 thenote theNote� ABA r   � �CDC m   � �EE �FF  D n     GHG 1   � ��]
�] 
txdlH  f   � �B I�\I L   � �JJ o   � ��[�[ 0 thenote theNote�\  � KLK l     �Z�Y�X�Z  �Y  �X  L MNM i   � �OPO I      �WQ�V�W $0 conditionalcheck conditionalCheckQ RSR o      �U�U 0 thetask theTaskS TUT o      �T�T 0 thevariables theVariablesU V�SV o      �R�R "0 thereplacements theReplacements�S  �V  P k    WW XYX r     Z[Z m     \\ �]]  [ o      �Q�Q 0 theoperation theOperationY ^_^ r    `a` m    bb �cc  a o      �P�P 0 thefunction theFunction_ ded r    fgf m    	�O�O g o      �N�N 0 variablevalue variableValuee hih r    jkj J    ll mnm m    oo �pp    d e l e t en qrq m    ss �tt    c o m p l e t er uvu m    ww �xx    d e f e rv yzy m    {{ �||  d e l e t ez }~} m     ���  c o m p l e t e~ ��� m    �� ��� 
 d e f e r� ��� m    �� ���    b y  � ��� m    �� ���    b y� ��� m    �� ���  b y  � ��M� m    �� ���  b y�M  k o      �L�L *0 operationdelimiters operationDelimitersi ��� r    }��� J    {�� ��� m    �� ���    < =  � ��� m    �� ���  < =  � ��� m     �� ���    < =� ��� m     #�� ���  < =� ��� m   # &�� ���   "d  � ��� m   & )�� ��� "d  � ��� m   ) ,�� ���   "d� ��� m   , /�� ��� "d� ��� l 	 / 2��K�J� m   / 2�� ���    > =  �K  �J  � ��� m   2 5�� ���  > =  � ��� m   5 8�� ���    > =� ��� m   8 ;�� ���  > =� ��� m   ; >�� ���   "e  � ��� m   > A�� ��� "e  � ��� m   A D�� ���   "e� ��� m   D G�� ��� "e� ��� l 	 G J��I�H� m   G J�� ���    = =  �I  �H  � ��� m   J M�� ���  = =  � ��� m   M P�� ���    = =� ��� m   P S�� ���  = =� ��� l 	 S V��G�F� m   S V�� ���    ! =  �G  �F  � ��� m   V Y�� ���  ! =  � ��� m   Y \�� ���    ! =� ��� m   \ _�� ���  ! =� ��� l 	 _ b��E�D� m   _ b�� �        >  �E  �D  �     m   b e   �    >        m   e h   �      >   	 
 	 m   h k   �    > 
     l 	 k n �C�B  m   k n   �      <  �C  �B        m   n q   �    <        m   q t   �      <   �A  m   t w   �    <�A  � o      �@�@ (0 functiondelimiters functionDelimiters�     r   ~ �     J   ~ � ! !  " # " m   ~ � $ $ � % %  a n d #  &�? & m   � � ' ' � ( (  o r�?     o      �>�> 0 combinators     ) * ) r   � � + , + m   � ��=
�= boovfals , o      �<�< 0 	condition   *  - . - l  � ��;�:�9�;  �:  �9   .  /�8 / O   � 0 1 0 O   � 2 3 2 k   � 4 4  5 6 5 Q   � � 7 8 9 7 r   � � : ; : n   � � < = < 1   � ��7
�7 
FCno = o   � ��6�6 0 thetask theTask ; o      �5�5 0 thenote theNote 8 R      �4�3�2
�4 .ascrerr ****      � ****�3  �2   9 L   � ��1�1   6  > ? > Z   � � @ A�0 B @ E   � � C D C o   � ��/�/ 0 thenote theNote D m   � � E E � F F  @ i f A Y   � � G�. H I�- G Z   � � J K�,�+ J C   � � L M L n   � � N O N 4   � ��* P
�* 
cpar P o   � ��)�) 0 i   O o   � ��(�( 0 thenote theNote M m   � � Q Q � R R  @ i f K k   � � S S  T U T r   � � V W V o   � ��'�' 0 i   W o      �&�& 0 parapointer paraPointer U  X Y X r   � � Z [ Z n   � � \ ] \ 4   � ��% ^
�% 
cpar ^ o   � ��$�$ 0 parapointer paraPointer ] o   � ��#�# 0 thenote theNote [ o      �"�" 0 thenote theNote Y  _�! _  S   � ��!  �,  �+  �. 0 i   H m   � �� �   I n   � � ` a ` 1   � ��
� 
leng a n   � � b c b 2  � ��
� 
cpar c o   � ��� 0 thenote theNote�-  �0   B L   � ���   ?  d e d l  � �����  �  �   e  f g f r   � h i h m   � j j � k k  O R i o      �� 0 	connector   g  l m l Z  n o�� n E  
 p q p o  �� 0 thenote theNote q m  	 r r � s s  & & o r   t u t m   v v � w w  A N D u o      �� 0 	connector  �  �   m  x y x l ����  �  �   y  z { z r   | } | n  ~  ~ I  � ��� (0 determineoperation determineOperation �  �� � o  �� 0 thenote theNote�  �     f   } o      �� 0 theoperation theOperation {  � � � r   6 � � � J   0 � �  � � � m   # � � � � �    t h e n   d e l e t e �  � � � m  #& � � � � �    t h e n   c o m p l e t e �  � � � m  &) � � � � �    t h e n   d e f e r �  �� � m  ), � � � � �  @ i f  �   � n      � � � 1  15�

�
 
txdl �  f  01 �  � � � r  7> � � � n  7< � � � 2  8<�	
�	 
citm � o  78�� 0 thenote theNote � o      �� 0 thenote theNote �  � � � r  ?H � � � m  ?B � � � � �   � n      � � � 1  CG�
� 
txdl �  f  BC �  � � � r  IP � � � c  IN � � � o  IJ�� 0 thenote theNote � m  JM�
� 
ctxt � o      �� 0 thenote theNote �  � � � l QQ��� �  �  �    �  � � � r  Qs � � � J  Qm � �  � � � m  QT � � � � �    & &   �  � � � m  TW � � � � �  & &   �  � � � m  WZ � � � � �    & & �  � � � m  Z] � � � � �  & & �  � � � m  ]` � � � � �    | |   �  � � � m  `c � � � � �  | |   �  � � � m  cf � � � � �    | | �  ��� � m  fi � � � � �  | |��   � n      � � � 1  nr��
�� 
txdl �  f  mn �  � � � r  t{ � � � n  ty � � � 2  uy��
�� 
citm � o  tu���� 0 thenote theNote � o      ����  0 thecomparisons theComparisons �  � � � r  |� � � � J  |~����   � o      ���� 0 
theresults 
theResults �  � � � l ����������  ��  ��   �  � � � X  �� ��� � � r  �� � � � b  �� � � � o  ������ 0 
theresults 
theResults � n �� � � � I  ���� ����� (0 evaluatecomparison evaluateComparison �  � � � o  ������ 0 
thecompare 
theCompare �  � � � o  ������ 0 thevariables theVariables �  ��� � o  ������ "0 thereplacements theReplacements��  ��   �  f  �� � o      ���� 0 
theresults 
theResults�� 0 
thecompare 
theCompare � o  ������  0 thecomparisons theComparisons �  � � � l ����������  ��  ��   �  � � � n �� � � � I  ���� ����� 0 	clearnote 	clearNote �  � � � o  ������ 0 thetask theTask �  ��� � o  ������ 0 parapointer paraPointer��  ��   �  f  �� �  � � � l ����������  ��  ��   �  ��� � Z  � � ����� � G  �� �!  � l ��!����! F  ��!!! l ��!����! = ��!!! o  ������ 0 	connector  ! m  ��!! �!!  O R��  ��  ! l ��!	����!	 E  ��!
!!
 o  ������ 0 
theresults 
theResults! m  ����
�� boovtrue��  ��  ��  ��  !  l ��!����! F  ��!!! l ��!����! = ��!!! o  ������ 0 	connector  ! m  ��!! �!!  A N D��  ��  ! l ��!����! H  ��!! E  ��!!! o  ������ 0 
theresults 
theResults! m  ����
�� boovfals��  ��  ��  ��   � Z  �!!!��! = ��!!! o  ������ 0 theoperation theOperation! m  ��!! �!!  d e l e t e! r  ��!! ! m  ��!!!! �!"!"  ! ! ! D e l e t e!  n      !#!$!# 1  ����
�� 
FCno!$ o  ������ 0 thetask theTask! !%!&!% = ��!'!(!' o  ������ 0 theoperation theOperation!( m  ��!)!) �!*!*  c o m p l e t e!& !+��!+ r  ��!,!-!, m  ����
�� boovtrue!- n      !.!/!. 1  ����
�� 
FCcd!/ o  ������ 0 thetask theTask��  ��  ��  ��  ��   3 n   � �!0!1!0 1   � ���
�� 
FCcn!1 n   � �!2!3!2 4  � ���!4
�� 
FCdw!4 m   � ����� !3 4  � ��!5
� 
docu!5 m   � ���  1 m   � �!6!6�                                                                                  OFOC  alis    X  Macintosh HD               ͘L�H+   v<�OmniFocus.app                                                   ���ΞR        ����  	                Applications    ͗�.      Ν�     v<�  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  �8  N !7!8!7 l     ����  �  �  !8 !9!:!9 i   � �!;!<!; I      �!=�� (0 determineoperation determineOperation!= !>�!> o      �� 0 thenote theNote�  �  !< k     &!?!? !@!A!@ Z    !B!C��!B E     !D!E!D o     �� 0 thenote theNote!E m    !F!F �!G!G  d e l e t e!C L    !H!H m    !I!I �!J!J  d e l e t e�  �  !A !K!L!K Z   !M!N��!M E    !O!P!O o    �� 0 thenote theNote!P m    !Q!Q �!R!R  c o m p l e t e!N L    !S!S m    !T!T �!U!U  c o m p l e t e�  �  !L !V�!V Z   &!W!X��!W E    !Y!Z!Y o    �� 0 thenote theNote!Z m    ![![ �!\!\ 
 d e f e r!X L     "!]!] m     !!^!^ �!_!_ 
 d e f e r�  �  �  !: !`!a!` l     ����  �  �  !a !b!c!b i   � �!d!e!d I      �!f�� (0 evaluatecomparison evaluateComparison!f !g!h!g o      �� 0 
comparison  !h !i!j!i o      �� 0 thevariables theVariables!j !k�!k o      �� "0 thereplacements theReplacements�  �  !e k    �!l!l !m!n!m r     F!o!p!o J     D!q!q !r!s!r m     !t!t �!u!u    < =  !s !v!w!v m    !x!x �!y!y  < =  !w !z!{!z m    !|!| �!}!}    < =!{ !~!!~ m    !�!� �!�!�  < =! !�!�!� m    !�!� �!�!�   "d  !� !�!�!� m    !�!� �!�!� "d  !� !�!�!� m    !�!� �!�!�   "d!� !�!�!� m    !�!� �!�!� "d!� !�!�!� l 	  	!���!� m    	!�!� �!�!�    > =  �  �  !� !�!�!� m   	 
!�!� �!�!�  > =  !� !�!�!� m   
 !�!� �!�!�    > =!� !�!�!� m    !�!� �!�!�  > =!� !�!�!� m    !�!� �!�!�   "e  !� !�!�!� m    !�!� �!�!� "e  !� !�!�!� m    !�!� �!�!�   "e!� !�!�!� m    !�!� �!�!� "e!� !�!�!� l 	  !���!� m    !�!� �!�!�    = =  �  �  !� !�!�!� m    !�!� �!�!�  = =  !� !�!�!� m    !�!� �!�!�    = =!� !�!�!� m    !�!� �!�!�  = =!� !�!�!� l 	  !���!� m    !�!� �!�!�    ! =  �  �  !� !�!�!� m    "!�!� �!�!�  ! =  !� !�!�!� m   " %!�!� �!�!�    ! =!� !�!�!� m   % (!�!� �!�!�  ! =!� !�!�!� l 	 ( +!���!� m   ( +!�!� �!�!�    >  �  �  !� !�!�!� m   + .!�!� �!�!�  >  !� !�!�!� m   . 1!�!� �!�!�    >!� !�!�!� m   1 4!�!� �!�!�  >!� !�!�!� l 	 4 7!���!� m   4 7!�!� �!�!�    <  �  �  !� !�!�!� m   7 :!�!� �!�!�  <  !� !�!�!� m   : =!�!� �!�!�    <!� !��!� m   = @!�!� �!�!�  <�  !p o      �� (0 functiondelimiters functionDelimiters!n !�!�!� r   G O!�!�!� I   G M�!��� &0 determinefunction determineFunction!� !��!� o   H I�� 0 
comparison  �  �  !� o      �� 0 thefunction theFunction!� !�!�!� l  P P����  �  �  !� !�!�!� r   P j" ""  b   P d""" o   P Q�� (0 functiondelimiters functionDelimiters" J   Q c"" """ m   Q T"" �""  "" "	"
"	 m   T W"" �""  "
 """ m   W Z"" �""  " "�" o   Z _��  0 variablesymbol variableSymbol�  " n     """ 1   e i�
� 
txdl"  f   d e!� """ r   k r""" n   k p""" 2   l p�
� 
citm" o   k l�� 0 
comparison  " o      �� 0 comparepieces comparePieces" """ r   s {""" n  s y""" I   t y�" �� 0 clearempties clearEmpties"  "!�"! o   t u�� 0 comparepieces comparePieces�  �  "  f   s t" o      �� 0 comparepieces comparePieces" """#"" Z  | �"$"%��"$ >  | �"&"'"& n   | �"(")"( 1   } ��
� 
leng") o   | }�� 0 comparepieces comparePieces"' m   � ��� "% L   � �"*"* m   � ��~
�~ boovfals�  �  "# "+","+ l  � ��}�|�{�}  �|  �{  ", "-"."- r   � �"/"0"/ m   � ��z
�z boovfals"0 o      �y�y 0 variablevalue variableValue". "1"2"1 Y   � �"3�x"4"5�w"3 Z   � �"6"7�v�u"6 =  � �"8"9"8 n   � �":";": 4   � ��t"<
�t 
cobj"< o   � ��s�s 0 i  "; o   � ��r�r 0 thevariables theVariables"9 l  � �"=�q�p"= n   � �">"?"> 4   � ��o"@
�o 
cobj"@ m   � ��n�n "? o   � ��m�m 0 comparepieces comparePieces�q  �p  "7 k   � �"A"A "B"C"B r   � �"D"E"D n   � �"F"G"F 4   � ��l"H
�l 
cobj"H o   � ��k�k 0 i  "G o   � ��j�j "0 thereplacements theReplacements"E o      �i�i 0 variablevalue variableValue"C "I�h"I  S   � ��h  �v  �u  �x 0 i  "4 m   � ��g�g "5 n   � �"J"K"J 1   � ��f
�f 
leng"K o   � ��e�e 0 thevariables theVariables�w  "2 "L"M"L l  � ��d�c�b�d  �c  �b  "M "N"O"N Z  � �"P"Q�a�`"P =  � �"R"S"R o   � ��_�_ 0 variablevalue variableValue"S m   � ��^
�^ boovfals"Q L   � �"T"T m   � ��]
�] boovfals�a  �`  "O "U"V"U l  � ��\�[�Z�\  �[  �Z  "V "W"X"W Q   � �"Y"Z�Y"Y r   � �"["\"[ c   � �"]"^"] o   � ��X�X 0 variablevalue variableValue"^ m   � ��W
�W 
nmbr"\ o      �V�V 0 variablevalue variableValue"Z R      �U�T�S
�U .ascrerr ****      � ****�T  �S  �Y  "X "_"`"_ l  � ��R�Q�P�R  �Q  �P  "` "a"b"a r   � �"c"d"c m   � ��O
�O boovfals"d o      �N�N 0 	condition  "b "e"f"e Q   ��"g"h"i"g Z   ��"j"k"l"m"j F   �"n"o"n l  � �"p�M�L"p =  � �"q"r"q o   � ��K�K 0 thefunction theFunction"r m   � �"s"s �"t"t  > =�M  �L  "o l  � "u�J�I"u @   � "v"w"v o   � ��H�H 0 variablevalue variableValue"w c   � �"x"y"x l  � �"z�G�F"z n   � �"{"|"{ 4   � ��E"}
�E 
cobj"} m   � ��D�D "| o   � ��C�C 0 comparepieces comparePieces�G  �F  "y m   � ��B
�B 
nmbr�J  �I  "k r  
"~""~ m  �A
�A boovtrue" o      �@�@ 0 	condition  "l "�"�"� F  %"�"�"� l "��?�>"� = "�"�"� o  �=�= 0 thefunction theFunction"� m  "�"� �"�"�  < =�?  �>  "� l !"��<�;"� B  !"�"�"� o  �:�: 0 variablevalue variableValue"� c   "�"�"� l "��9�8"� n  "�"�"� 4  �7"�
�7 
cobj"� m  �6�6 "� o  �5�5 0 comparepieces comparePieces�9  �8  "� m  �4
�4 
nmbr�<  �;  "� "�"�"� r  (+"�"�"� m  ()�3
�3 boovtrue"� o      �2�2 0 	condition  "� "�"�"� F  .F"�"�"� l .3"��1�0"� = .3"�"�"� o  ./�/�/ 0 thefunction theFunction"� m  /2"�"� �"�"�  >�1  �0  "� l 6B"��.�-"� ?  6B"�"�"� o  67�,�, 0 variablevalue variableValue"� c  7A"�"�"� l 7="��+�*"� n  7="�"�"� 4  8=�)"�
�) 
cobj"� m  ;<�(�( "� o  78�'�' 0 comparepieces comparePieces�+  �*  "� m  =@�&
�& 
nmbr�.  �-  "� "�"�"� r  IL"�"�"� m  IJ�%
�% boovtrue"� o      �$�$ 0 	condition  "� "�"�"� F  Og"�"�"� l OT"��#�""� = OT"�"�"� o  OP�!�! 0 thefunction theFunction"� m  PS"�"� �"�"�  <�#  �"  "� l Wc"�� �"� A  Wc"�"�"� o  WX�� 0 variablevalue variableValue"� c  Xb"�"�"� l X^"���"� n  X^"�"�"� 4  Y^�"�
� 
cobj"� m  \]�� "� o  XY�� 0 comparepieces comparePieces�  �  "� m  ^a�
� 
nmbr�   �  "� "��"� r  jm"�"�"� m  jk�
� boovtrue"� o      �� 0 	condition  �  "m k  p�"�"� "�"�"� r  px"�"�"� n  pv"�"�"� 4  qv�"�
� 
cobj"� m  tu�� "� o  pq�� 0 comparepieces comparePieces"� o      �� $0 theconditionpart theConditionPart"� "�"�"� Q  y�"�"��"� r  |�"�"�"� c  |�"�"�"� o  |}�� $0 theconditionpart theConditionPart"� m  }��
� 
nmbr"� o      �� $0 theconditionpart theConditionPart"� R      ���

� .ascrerr ****      � ****�  �
  �  "� "��	"� Z  ��"�"���"� l ��"���"� G  ��"�"�"� l ��"���"� F  ��"�"�"� l ��"���"� = ��"�"�"� o  ��� �  0 variablevalue variableValue"� o  ������ $0 theconditionpart theConditionPart�  �  "� l ��"�����"� = ��"�"�"� o  ������ 0 thefunction theFunction"� m  ��"�"� �"�"�  = =��  ��  �  �  "� l ��"�����"� F  ��"�"�"� l ��"�����"� > ��"�"�"� o  ������ 0 variablevalue variableValue"� o  ������ $0 theconditionpart theConditionPart��  ��  "� l ��"�����"� = ��"�"�"� o  ������ 0 thefunction theFunction"� m  ��"�"� �"�"�  ! =��  ��  ��  ��  �  �  "� r  ��"�"�"� m  ����
�� boovtrue"� o      ���� 0 	condition  �  �  �	  "h R      ������
�� .ascrerr ****      � ****��  ��  "i L  ��"�"� m  ����
�� boovfals"f "�"�"� l ����������  ��  ��  "� "�"�"� L  ��"�"� o  ������ 0 	condition  "� "���"� l ����������  ��  ��  ��  !c "�"�"� l     ��������  ��  ��  "� "�"�"� i   � �"�"�"� I      ��"����� &0 determinefunction determineFunction"� "���"� o      ���� 0 thenote theNote��  ��  "� k     M"�"� "�# "� Z    ##����# E     ### o     ���� 0 thenote theNote# m    ## �##  < =# L    ## m    ## �#	#	  < =��  ��  #  #
##
 Z   ##����# E    ### o    ���� 0 thenote theNote# m    ## �##  > =# L    ## m    ## �##  > =��  ��  # ### Z   &##����# E    ### o    ���� 0 thenote theNote# m    ## �##  = =# L     "## m     !## �##  = =��  ��  # # #!#  Z  ' 3#"##����#" E   ' *#$#%#$ o   ' (���� 0 thenote theNote#% m   ( )#&#& �#'#'  ! =## L   - /#(#( m   - .#)#) �#*#*  ! =��  ��  #! #+#,#+ Z  4 @#-#.����#- E   4 7#/#0#/ o   4 5���� 0 thenote theNote#0 m   5 6#1#1 �#2#2  <#. L   : <#3#3 m   : ;#4#4 �#5#5  <��  ��  #, #6��#6 Z  A M#7#8����#7 E   A D#9#:#9 o   A B���� 0 thenote theNote#: m   B C#;#; �#<#<  >#8 L   G I#=#= m   G H#>#> �#?#?  >��  ��  ��  "� #@#A#@ l     ��������  ��  ��  #A #B#C#B i   � �#D#E#D I      ��#F���� 0 clearempties clearEmpties#F #G��#G o      ���� 0 thelist theList��  ��  #E k     9#H#H #I#J#I r     #K#L#K J     ����  #L o      ���� 0 newlist newList#J #M#N#M Y    6#O��#P#Q��#O Z    1#R#S��#R F    ##T#U#T l   #V��#V >   #W#X#W n    #Y#Z#Y 4    �#[
� 
cobj#[ o    �� 0 i  #Z o    �� 0 thelist theList#X m    #\#\ �#]#]  �  �  #U l   !#^��#^ >   !#_#`#_ n    #a#b#a 4    �#c
� 
cobj#c o    �� 0 i  #b o    �� 0 thelist theList#` m     #d#d �#e#e   �  �  #S r   & -#f#g#f n   & *#h#i#h 4   ' *�#j
� 
cobj#j o   ( )�� 0 i  #i o   & '�� 0 thelist theList#g l     #k��#k n      #l#m#l  ;   + ,#m o   * +�� 0 newlist newList�  �  �  �  �� 0 i  #P m    	�� #Q n   	 #n#o#n 1   
 �
� 
leng#o o   	 
�� 0 thelist theList��  #N #p�#p L   7 9#q#q o   7 8�� 0 newlist newList�  #C #r#s#r l     ����  �  �  #s #t#u#t i   � �#v#w#v I      �#x�� 0 	clearnote 	clearNote#x #y#z#y o      �� 0 thetask theTask#z #{�#{ o      �� 0 parapointer paraPointer�  �  #w O     �#|#}#| O    �#~##~ k   
 �#�#� #�#�#� Q   
 #�#�#�#� r    #�#�#� n    #�#�#� 2    �
� 
cpar#� l   #���#� n    #�#�#� 1    �
� 
FCno#� o    �� 0 thetask theTask�  �  #� o      �� 0 thenote theNote#� R      ���
� .ascrerr ****      � ****�  �  #� L    ��  #� #�#�#� r    $#�#�#� o     �
� 
ret #� n     #�#�#� 1   ! #�
� 
txdl#�  f     !#� #�#�#� Z   % 9#�#���#� =  % *#�#�#� n   % (#�#�#� 1   & (�
� 
leng#� o   % &�� 0 thenote theNote#� m   ( )�� #� k   - 5#�#� #�#�#� r   - 2#�#�#� m   - .#�#� �#�#�  #� l     #���#� n      #�#�#� 1   / 1�
� 
FCno#� o   . /�� 0 thetask theTask�  �  #� #��#� L   3 5��  �  �  �  #� #��#� Z   : �#�#�#�#�#� =  : =#�#�#� o   : ;�� 0 parapointer paraPointer#� m   ; <�� #� r   @ Q#�#�#� c   @ M#�#�#� l  @ K#���#� n   @ K#�#�#� 7  A K�#�#�
� 
cobj#� m   E G�� #� m   H J����#� o   @ A�� 0 thenote theNote�  �  #� m   K L�
� 
TEXT#� l     #���~#� n      #�#�#� 1   N P�}
�} 
FCno#� o   M N�|�| 0 thetask theTask�  �~  #� #�#�#� =  T Y#�#�#� o   T U�{�{ 0 parapointer paraPointer#� l  U X#��z�y#� n   U X#�#�#� 1   V X�x
�x 
leng#� o   U V�w�w 0 thenote theNote�z  �y  #� #��v#� r   \ m#�#�#� c   \ i#�#�#� l  \ g#��u�t#� n   \ g#�#�#� 7  ] g�s#�#�
�s 
cobj#� m   a c�r�r #� m   d f�q�q��#� o   \ ]�p�p 0 thenote theNote�u  �t  #� m   g h�o
�o 
TEXT#� l     #��n�m#� n      #�#�#� 1   j l�l
�l 
FCno#� o   i j�k�k 0 thetask theTask�n  �m  �v  #� r   p �#�#�#� c   p �#�#�#� l  p �#��j�i#� b   p �#�#�#� l  p }#��h�g#� 7  p }�f#�#�
�f 
cobj#� m   u w�e�e #� l  x |#��d�c#� \   x |#�#�#� o   y z�b�b 0 parapointer paraPointer#� m   z {�a�a �d  �c  �h  �g  #� l  } �#��`�_#� 7  } ��^#�#�
�^ 
cobj#� l  � �#��]�\#� [   � �#�#�#� o   � ��[�[ 0 parapointer paraPointer#� m   � ��Z�Z �]  �\  #� m   � ��Y�Y���`  �_  �j  �i  #� m   � ��X
�X 
ctxt#� l     #��W�V#� n      #�#�#� 1   � ��U
�U 
FCno#� o   � ��T�T 0 thetask theTask�W  �V  �  # 1    �S
�S 
FCDo#} m     #�#��                                                                                  OFOC  alis    X  Macintosh HD               ͘L�H+   v<�OmniFocus.app                                                   ���ΞR        ����  	                Applications    ͗�.      Ν�     v<�  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  #u #�#�#� l     �R�Q�P�R  �Q  �P  #� #�#�#� l     �O�N�M�O  �N  �M  #� #�#�#� i   � �#�#�#� I      �L#��K�L "0 customdatestyle customDateStyle#� #��J#� o      �I�I 0 thedate theDate�J  �K  #� k    K#�#� #�#�#� r     #�#�#� n    #�#�#� 1    �H
�H 
txdl#�  f     #� o      �G�G "0 storedelimiters storeDelimiters#� #�#�#� r    #�#�#� m    #�#� �#�#�  #� n     #�#�#� 1    
�F
�F 
txdl#�  f    #� #�#�#� s    #�$ #� o    �E�E 0 
dateformat 
dateFormat$  o      �D�D 0 
returndate 
returnDate#� $$$ l   �C�B�A�C  �B  �A  $ $$$ r    $$$ m    $$ �$$  Y Y Y Y$ o      �@�@ 0 
yearformat 
yearFormat$ $	$
$	 r    $$$ m    $$ �$$  M M M M$ o      �?�? 0 monthformat monthFormat$
 $$$ r     $$$ m    $$ �$$  D$ o      �>�> 0 	dayformat 	dayFormat$ $$$ l  ! !�=�<�;�=  �<  �;  $ $$$ r   ! &$$$ n   ! $$$$ m   " $�:
�: 
mnth$ o   ! "�9�9 0 thedate theDate$ o      �8�8 0 themonth theMonth$ $$$ r   ' .$$ $ c   ' ,$!$"$! n   ' *$#$$$# 1   ( *�7
�7 
day $$ o   ' (�6�6 0 thedate theDate$" m   * +�5
�5 
ctxt$  o      �4�4 0 theday theDay$ $%$&$% r   / 6$'$($' c   / 4$)$*$) n   / 2$+$,$+ 1   0 2�3
�3 
year$, o   / 0�2�2 0 thedate theDate$* m   2 3�1
�1 
ctxt$( o      �0�0 0 theyear theYear$& $-$.$- r   7 >$/$0$/ c   7 <$1$2$1 n   7 :$3$4$3 m   8 :�/
�/ 
wkdy$4 o   7 8�.�. 0 thedate theDate$2 m   : ;�-
�- 
ctxt$0 o      �,�, 0 
theweekday 
theWeekday$. $5$6$5 l  ? ?�+�*�)�+  �*  �)  $6 $7$8$7 Z   ? b$9$:�($;$9 E   ? F$<$=$< o   ? D�'�' 0 
dateformat 
dateFormat$= m   D E$>$> �$?$?  Y Y Y Y$: r   I L$@$A$@ m   I J$B$B �$C$C  Y Y Y Y$A o      �&�& 0 
yearformat 
yearFormat�(  $; k   O b$D$D $E$F$E r   O R$G$H$G m   O P$I$I �$J$J  Y Y$H o      �%�% 0 
yearformat 
yearFormat$F $K�$$K r   S b$L$M$L c   S `$N$O$N n   S ^$P$Q$P 7  T ^�#$R$S
�# 
cha $R m   X Z�"�"��$S m   [ ]�!�!��$Q l  S T$T� �$T o   S T�� 0 theyear theYear�   �  $O m   ^ _�
� 
ctxt$M o      �� 0 theyear theYear�$  $8 $U$V$U l  c c����  �  �  $V $W$X$W Z   c �$Y$Z�$[$Y E   c j$\$]$\ o   c h�� 0 
dateformat 
dateFormat$] m   h i$^$^ �$_$_  D D$Z k   m �$`$` $a$b$a r   m r$c$d$c m   m p$e$e �$f$f  D D$d o      �� 0 	dayformat 	dayFormat$b $g�$g Z  s �$h$i��$h =  s z$j$k$j n   s x$l$m$l 1   t x�
� 
leng$m o   s t�� 0 theday theDay$k m   x y�� $i r   } �$n$o$n b   } �$p$q$p m   } �$r$r �$s$s  0$q o   � ��� 0 theday theDay$o o      �� 0 theday theDay�  �  �  �  $[ r   � �$t$u$t m   � �$v$v �$w$w  D$u o      �� 0 	dayformat 	dayFormat$X $x$y$x l  � ����
�  �  �
  $y $z${$z Z   �$|$}$~$$| E   � �$�$�$� o   � ��	�	 0 
dateformat 
dateFormat$� m   � �$�$� �$�$�  M M M M$} k   � �$�$� $�$�$� r   � �$�$�$� m   � �$�$� �$�$�  M M M M$� o      �� 0 monthformat monthFormat$� $��$� r   � �$�$�$� c   � �$�$�$� o   � ��� 0 themonth theMonth$� m   � ��
� 
ctxt$� o      �� 0 themonth theMonth�  $~ $�$�$� E   � �$�$�$� o   � ��� 0 
dateformat 
dateFormat$� m   � �$�$� �$�$�  M M M$� $�$�$� k   � �$�$� $�$�$� r   � �$�$�$� m   � �$�$� �$�$�  M M M$� o      �� 0 monthformat monthFormat$� $��$� r   � �$�$�$� c   � �$�$�$� n   � �$�$�$� 7  � �� $�$�
�  
cha $� m   � ����� $� m   � ����� $� l  � �$�����$� c   � �$�$�$� o   � ����� 0 themonth theMonth$� m   � ���
�� 
ctxt��  ��  $� m   � ���
�� 
ctxt$� o      ���� 0 themonth theMonth�  $� $�$�$� E   � �$�$�$� o   � ����� 0 
dateformat 
dateFormat$� m   � �$�$� �$�$�  M M$� $���$� k   �$�$� $�$�$� r   � �$�$�$� m   � �$�$� �$�$�  M M$� o      ���� 0 monthformat monthFormat$� $�$�$� r   � �$�$�$� c   � �$�$�$� l  � �$�����$� c   � �$�$�$� o   � ����� 0 themonth theMonth$� m   � ���
�� 
long��  ��  $� m   � ���
�� 
ctxt$� o      ���� 0 themonth theMonth$� $���$� Z  �$�$�����$� =  � �$�$�$� n   � �$�$�$� 1   � ���
�� 
leng$� o   � ����� 0 themonth theMonth$� m   � ����� $� r   � �$�$�$� b   � �$�$�$� m   � �$�$� �$�$�  0$� o   � ����� 0 themonth theMonth$� o      ���� 0 themonth theMonth��  ��  ��  ��  $ k  $�$� $�$�$� r  
$�$�$� m  $�$� �$�$�  M$� o      ���� 0 monthformat monthFormat$� $���$� r  $�$�$� c  $�$�$� l $�����$� c  $�$�$� o  ���� 0 themonth theMonth$� m  ��
�� 
long��  ��  $� m  ��
�� 
ctxt$� o      ���� 0 themonth theMonth��  ${ $�$�$� l ��������  ��  ��  $� $�$�$� r  $�$�$� I  ��$����� 0 findreplace findReplace$� $�$�$� o  ���� 0 
returndate 
returnDate$� $�$�$� o  ���� 0 
yearformat 
yearFormat$� $���$� o  ���� 0 theyear theYear��  ��  $� o      ���� 0 
returndate 
returnDate$� $�$�$� r   *$�$�$� I   (��$����� 0 findreplace findReplace$� $�$�$� o  !"���� 0 
returndate 
returnDate$� $�$�$� o  "#���� 0 monthformat monthFormat$� $���$� o  #$���� 0 themonth theMonth��  ��  $� o      ���� 0 
returndate 
returnDate$� $�$�$� r  +5$�$�$� I  +3��$����� 0 findreplace findReplace$� $�$�$� o  ,-���� 0 
returndate 
returnDate$� $�$�$� o  -.���� 0 	dayformat 	dayFormat$� $���$� o  ./���� 0 theday theDay��  ��  $� o      ���� 0 
returndate 
returnDate$� $�$�$� r  6B% %%  I  6@��%���� 0 findreplace findReplace% %%% o  78���� 0 
returndate 
returnDate% %%% m  8;%% �%%  W% %	��%	 o  ;<���� 0 
theweekday 
theWeekday��  ��  % o      ���� 0 
returndate 
returnDate$� %
%%
 l CC������  �  �  % %%% r  CH%%% o  CD�� "0 storedelimiters storeDelimiters% n     %%% 1  EG�
� 
txdl%  f  DE% %�% L  IK%% o  IJ�� 0 
returndate 
returnDate�  #� %%% l     ����  �  �  % %%% i   � �%%% I      �%�� 0 findreplace findReplace% %%% o      �� 0 thetext theText% %%% o      �� 0 find  % %�% o      �� 0 replace  �  �  % k      % %  %!%"%! r     %#%$%# o     �� 0 find  %$ n     %%%&%% 1    �
� 
txdl%&  f    %" %'%(%' r    %)%*%) n    	%+%,%+ 2    	�
� 
citm%, o    �� 0 thetext theText%* o      �� 0 thetext theText%( %-%.%- r    %/%0%/ o    �� 0 replace  %0 n     %1%2%1 1    �
� 
txdl%2  f    %. %3%4%3 r    %5%6%5 c    %7%8%7 o    �� 0 thetext theText%8 m    �
� 
ctxt%6 o      �� 0 thetext theText%4 %9%:%9 r    %;%<%; m    %=%= �%>%>  %< n     %?%@%? 1    �
� 
txdl%@  f    %: %A�%A L     %B%B o    �� 0 thetext theText�  % %C%D%C l     ����  �  �  %D %E�%E i   � �%F%G%F I      �%H�� :0 adjustforspecialandweekends adjustForSpecialAndWeekends%H %I%J%I o      �� 0 bday bDay%J %K%L%K o      �� &0 adjustforweekends adjustForWeekends%L %M�%M o      ��  0 adjustforother adjustForOther�  �  %G k     �%N%N %O%P%O l     ����  �  �  %P %Q%R%Q s     %S%T%S o     �� 0 bday bDay%T o      �� 0 adjdate adjDate%R %U%V%U l   ����  �  �  %V %W%X%W Z    �%Y%Z��%Y o    �� &0 adjustforweekends adjustForWeekends%Z k   	 �%[%[ %\%]%\ r   	 %^%_%^ l  	 %`��%` I  	 ���
� .misccurdldt    ��� null�  �  �  �  %_ o      �� 0 aday aDay%] %a%b%a r    %c%d%c \    %e%f%e o    �� 0 bday bDay%f o    �� 0 aday aDay%d o      �� 0 dif  %b %g%h%g r     %i%j%i c    %k%l%k ^    %m%n%m o    �� 0 dif  %n l   %o��%o ]    %p%q%p m    �� %q 1    �
� 
days�  �  %l m    �
� 
long%j o      �� 0 daydif dayDif%h %r%s%r l  ! !�~�}�|�~  �}  �|  %s %t%u%t r   ! $%v%w%v m   ! "�{�{  %w o      �z�z 0 	adjdaysby 	adjDaysBy%u %x%y%x l  % %�y�x�w�y  �x  �w  %y %z%{%z r   % 0%|%}%| I  % .�v%~%
�v .sysorondlong        doub%~ l  % (%��u�t%� ^   % (%�%�%� o   % &�s�s 0 daydif dayDif%� m   & '�r�r �u  �t  % �q%��p
�q 
dire%� m   ) *�o
�o olierndD�p  %} o      �n�n 0 weekdayweeks weekdayWeeks%{ %�%�%� r   1 6%�%�%� ]   1 4%�%�%� o   1 2�m�m 0 weekdayweeks weekdayWeeks%� m   2 3�l�l %� o      �k�k 0 	adjdaysby 	adjDaysBy%� %�%�%� r   7 >%�%�%� \   7 <%�%�%� o   7 8�j�j 0 daydif dayDif%� ]   8 ;%�%�%� m   8 9�i�i %� o   9 :�h�h 0 weekdayweeks weekdayWeeks%� o      �g�g 0 leftoverdays leftoverDays%� %�%�%� l  ? ?�f�e�d�f  �e  �d  %� %�%�%� r   ? F%�%�%� c   ? D%�%�%� l  ? B%��c�b%� n   ? B%�%�%� m   @ B�a
�a 
wkdy%� o   ? @�`�` 0 aday aDay�c  �b  %� m   B C�_
�_ 
long%� o      �^�^ 0 wday wDay%� %�%�%� l  G G�]�\�[�]  �\  �[  %� %�%�%� l  G G�Z%�%��Z  %� 9 3 If the target day will land on or beyond a weekend   %� �%�%� f   I f   t h e   t a r g e t   d a y   w i l l   l a n d   o n   o r   b e y o n d   a   w e e k e n d%� %�%�%� Z   G X%�%��Y�X%� @   G L%�%�%� o   G H�W�W 0 leftoverdays leftoverDays%� l  H K%��V�U%� \   H K%�%�%� m   H I�T�T %� o   I J�S�S 0 wday wDay�V  �U  %� r   O T%�%�%� [   O R%�%�%� o   O P�R�R 0 	adjdaysby 	adjDaysBy%� m   P Q�Q�Q %� o      �P�P 0 	adjdaysby 	adjDaysBy�Y  �X  %� %�%�%� l  Y Y�O�N�M�O  �N  �M  %� %�%�%� Z   Y �%�%�%��L%� =  Y \%�%�%� o   Y Z�K�K 0 wday wDay%� m   Z [�J�J %� l  _ t%�%�%�%� k   _ t%�%� %�%�%� Z   _ r%�%��I%�%� =  _ b%�%�%� o   _ `�H�H 0 leftoverdays leftoverDays%� m   ` a�G�G  %� r   e j%�%�%� \   e h%�%�%� o   e f�F�F 0 	adjdaysby 	adjDaysBy%� m   f g�E�E %� o      �D�D 0 	adjdaysby 	adjDaysBy�I  %� r   m r%�%�%� \   m p%�%�%� o   m n�C�C 0 	adjdaysby 	adjDaysBy%� m   n o�B�B %� o      �A�A 0 	adjdaysby 	adjDaysBy%� %��@%� l  s s�?�>�=�?  �>  �=  �@  %�  	 Saturday   %� �%�%�    S a t u r d a y%� %�%�%� =  w z%�%�%� o   w x�<�< 0 wday wDay%� m   x y�;�; %� %��:%� l  } �%�%�%�%� Z   } �%�%��9�8%� =  } �%�%�%� o   } ~�7�7 0 leftoverdays leftoverDays%� m   ~ �6�6  %� r   � �%�%�%� \   � �%�%�%� o   � ��5�5 0 	adjdaysby 	adjDaysBy%� m   � ��4�4 %� o      �3�3 0 	adjdaysby 	adjDaysBy�9  �8  %�   Sunday   %� �%�%�    S u n d a y�:  �L  %� %�%�%� l  � ��2�1�0�2  �1  �0  %� %��/%� r   � �%�%�%� [   � �%�%�%� o   � ��.�. 0 bday bDay%� ]   � �%�%�%� o   � ��-�- 0 	adjdaysby 	adjDaysBy%� 1   � ��,
�, 
days%� o      �+�+ 0 adjdate adjDate�/  �  �  %X %�%�%� l  � ��*�)�(�*  �)  �(  %� %�%�%� Z   � �%�%��'�&%� o   � ��%�%  0 adjustforother adjustForOther%� Y   � �%��$%�%��#%� O   � �%�%�%� Z   � �%�%��"�!%� F   � �%�%�%� l  � �%�� �%� B   � �%�%�%�  g   � �%� o   � ��� 0 adjdate adjDate�   �  %� l  � �%���%� @   � �%�%�%�  g   � �%� o   � ��� 0 aday aDay�  �  %� Z   � �%�%��& %� >  � �&&& n   � �&&& m   � ��
� 
wkdy& o   � ��� 0 adjdate adjDate& m   � ��
� 
fri %� r   � �&&& [   � �&&& o   � ��� 0 adjdate adjDate& ]   � �&	&
&	 m   � ��� &
 1   � ��
� 
days& o      �� 0 adjdate adjDate�  &  r   � �&&& [   � �&&& o   � ��� 0 adjdate adjDate& ]   � �&&& m   � ��� & 1   � ��
� 
days& o      �� 0 adjdate adjDate�"  �!  %� n   � �&&& 4   � ��&
� 
cobj& o   � ��� 0 i  & o   � ��� "0 specialskipdays specialSkipDays�$ 0 i  %� m   � ��� %� l  � �&�
�	& n   � �&&& 1   � ��
� 
leng& o   � ��� "0 specialskipdays specialSkipDays�
  �	  �#  �'  �&  %� &�& L   � �&& o   � ��� 0 adjdate adjDate�  �       l�& & $ - 6 <�& L�� k p u z&& � �&&&& &!&"&#&$&%&&&'&(&)&*&+&,&-&.&/&0&1&2&3&4&5&6&7&8&9&:&;&<&=&>&?� &@&A���&B��&C��&D&E&F&G&H&I�&J&K&L&M�������������������������������������������������������������  & j����������������������������������������������������������������������������������������������������������������������������������~�}�|�{�z�y�x�w�v�� (0 startorendoffolder startOrEndOfFolder��  0 variablesymbol variableSymbol�� ,0 defaultfolderpointer defaultFolderPointer�� 40 optionliststartdelimiter optionListStartDelimiter�� 00 optionlistenddelimiter optionListEndDelimiter�� .0 defaulttemplatefolder defaultTemplateFolder�� 0 usegrowl useGrowl�� "0 specialskipdays specialSkipDays�� 0 
dateformat 
dateFormat�� 0 firstrun firstRun�� .0 specialtemplatefolder specialTemplateFolder�� "0 applicationname applicationName�� &0 scriptstartnotify scriptStartNotify�� "0 scriptendnotify scriptEndNotify�� 0 
datenotify 
dateNotify�� $0 allnotifications allNotifications�� ,0 defaultnotifications defaultNotifications�� "0 iconapplication iconApplication�� &0 checkingsomething checkingSomething�� (0 selectionpositions selectionPositions�� $0 populatetemplate populateTemplate�� $0 replacevariables replaceVariables�� (0 eliminatevariables eliminateVariables�� &0 workingthecontext workingTheContext�� $0 findthevariables findTheVariables�� *0 findthereplacements findTheReplacements�� &0 cleanexcessbreaks cleanExcessBreaks�� .0 checkforothertemplate checkForOtherTemplate�� 20 adjustoldtemplatesyntax adjustOldTemplateSyntax�� 80 checkingfordateinformation checkingForDateInformation�� 0 englishtime englishTime�� (0 isnumberidentifier isNumberIdentifier� 0 howmanydays howManyDays� $0 figureoutthetime figureOutTheTime� &0 understandthetime understandTheTime� 40 figuringtimetodesiredday figuringTimeToDesiredDay� 00 daysfromtodaytoweekday daysFromTodayToWeekday� 00 understandabsolutedate understandAbsoluteDate� 40 adjustpositionsfornoyear adjustPositionsForNoYear� 0 solvetheyear solveTheYear� 
0 notify  �  0 attachmentlist attachmentList� $0 getridofdateinfo getRidOfDateInfo� $0 conditionalcheck conditionalCheck� (0 determineoperation determineOperation� (0 evaluatecomparison evaluateComparison� &0 determinefunction determineFunction� 0 clearempties clearEmpties� 0 	clearnote 	clearNote� "0 customdatestyle customDateStyle� 0 findreplace findReplace� :0 adjustforspecialandweekends adjustForSpecialAndWeekends
� .aevtoappnull  �   � ****� :0 othertemplatescriptprojects otherTemplateScriptProjects� 0 thecount theCount� 0 projectlist projectList� "0 projectnamelist projectNameList� "0 chooselisttitle chooseListTitle�  0 chooselisttext chooseListText� 0 chooselistok chooseListOK� "0 selectedproject selectedProject� "0 projectposition projectPosition� 20 selectedprojecttemplate selectedProjectTemplate� (0 defaultfolderfound defaultFolderFound� 0 thevariables theVariables� 00 thelistvariableoptions theListVariableOptions� 0 justduplicate justDuplicate� 0 
folderlist 
folderList�  0 foldernamelist folderNameList� 0 nextlistitem nextListItem�  0 selectedfolder selectedFolder� 00 selectedfoldertemplate selectedFolderTemplate� "0 thereplacements theReplacements� (0 newprojectinstance newProjectInstance�  0 theattachments theAttachments� 0 theurl theURL�  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �~  �}  �|  �{  �z  �y  �x  �w  �v  & �&N&N  $
� boovtrue& �u�t�u  �t  
� boovfals
� 
null& �s&O�s &O   p u z& �r��q�p&P&Q�o�r (0 selectionpositions selectionPositions�q �n&R�n &R  �m�l�k�m 0 
selectlist 
selectList�l 0 originallist originalList�k (0 multipleselections multipleSelections�p  &P �j�i�h�g�f�e�d�c�j 0 
selectlist 
selectList�i 0 originallist originalList�h (0 multipleselections multipleSelections�g 0 choicesfound choicesFound�f ,0 positionofselections positionOfSelections�e 0 j  �d 0 k  �c 0 achoicefound aChoiceFound&Q �b�a�`�_
�b 
leng
�a 
bool
�` 
cobj
�_ 
null�o Ѣ rjE�OjvE�OkE�O _h���,
 	���, �&kE�OfE�O 8h���,
 ��&��/��/  ��6FOeE�O�kE�Y hO�kE�[OY��O�kE�[OY��Y [kE�O�E�O Ph���,
 ���&kE�O /h���,
 ���&��/��/  �E�Y hO�kE�[OY��O�kE�[OY��O�& �^u�]�\&S&T�[�^ $0 populatetemplate populateTemplate�] �Z&U�Z &U  �Y�X�W�Y 0 
theproject 
theProject�X $0 cleanedvariables cleanedVariables�W "0 thereplacements theReplacements�\  &S �V�U�T�S�R�Q�P�O�N�M�L�K�J�I�H�G�F�E�D�C�B�A�@�?�>�V 0 
theproject 
theProject�U $0 cleanedvariables cleanedVariables�T "0 thereplacements theReplacements�S .0 delimcleanedvariables delimCleanedVariables�R 0 i  �Q &0 theattachmentlist theAttachmentList�P (0 possibledatechange possibleDateChange�O 0 thefullnote theFullNote�N 0 
thenewnote 
theNewNote�M  0 thesupportpath theSupportPath�L  0 thesupportnote theSupportNote�K &0 attachmentrequest attachmentRequest�J 00 theattachfilepathalias theAttachFilePathAlias�I 0 theattachment theAttachment�H "0 completethetask completeTheTask�G 0 tasklist taskList�F 0 thenote theNote�E 0 
thecopynum 
theCopyNum�D $0 thecopyparagraph theCopyParagraph�C 0 theparagraphs theParagraphs�B &0 cleanedparagraphs cleanedParagraphs�A  0 therepeatcount theRepeatCount�@ $0 theweekincrement theWeekIncrement�? (0 newprojectinstance newProjectInstance�> 0 thetask theTask&T e�=�<$�;�:�9�8�7�6�5��4�3��2�1�0�/JP�.�-d�,i�+ru�*�)�(��������'���&�%�$�#�"�!� ������agw|�����������������	T	Z	p	s	y	|	�	�	���
�
]
a
d
z���
���
�	��
�= 
leng
�< 
cobj
�; 
FCDo
�: 
ID  
�9 
pcls
�8 
TEXT�7  0 attachmentlist attachmentList
�6 
pnam�5 $0 replacevariables replaceVariables
�4 
msng�3 80 checkingfordateinformation checkingForDateInformation
�2 
FCDs
�1 
FCDd
�0 
FCno�/ (0 eliminatevariables eliminateVariables
�. 
bool
�- 
prmp
�, 
quot
�+ .sysostflalis    ��� null
�* 
txdl
�) 
citm
�( 
spac�' &0 cleanexcessbreaks cleanExcessBreaks
�& .sysostdfalis    ��� null
�% 
ctxt
�$ 
kocl
�# 
OSfA
�" 
prdt
�! 
atfn
�  
OSin� 
� .corecrel****      � null�  �  
� .corecnte****       ****
� 
FCft
� 
btns
� 
dflt
� .sysodlogaskr        TEXT
� 
bhit
� 
FCcd� $0 conditionalcheck conditionalCheck
� 
FCct� &0 workingthecontext workingTheContext
� .coredelonull���     obj 
� 
cpar
� 
ret 
� 
nmbr
� .ascrcmnt****      � ****
� 
week
� 
insh
�
 
ctnr
�	 
FCpr
� 
insl
� .coreclon****      � ****�[jvE�O k��,Ekh b  ��/%�6F[OY��O��*�,ܠ�)*�,*�,�&l+ E�O��,j )*�,��m+ 	*�,FY hO�kvE�O ch��k/�)*��m+ E�O��k/� ,��l/�  ��k/*�,FY 
��k/*�,FO��m/*a ,FY ��,l  ��l/*a ,FY h[OY��O��,j $*a ,E�O)�k+ E�O)���m+ 	*a ,FY hO*a ,a 
 *a ,a a & c*a a _ %*�,%_ %a %l �&E�Oa a lv)a ,FO*a ,�&a -E�O_ �%kv)a ,FO��&*a ,FOa )a ,FY hOfE�O*a ,a  
 *a ,a !a & )eE�O)*a ,a "a #lva $a %lvm+ 	*a ,FY hO)*a ,k+ &*a ,FO� P D*a a '*�,%a (%l )a *&E�O*a , *a +a ,a -a .�a /fa 0a 0 1UW X 2 3hY hO*a , 5 2�[a +�l 4kh *a +a ,a -a .�a /fa 0a 0 1[OY��UOfE�Osk*a 5-j 4kh *a 5�/U)*�,*�,�&l+ E�O��,j )*�,��m+ 	*�,FY hOfE�O*a ,a 6
 *a ,a 7a & /a 8*�,%a 9%a :a ;a <lva =la 0 >a ?,a @ E�Y hO� e*a A,FY�)*a ,a Ba Clva Da Elvm+ 	*a ,FOa FkvE�O eh��k/�)*��m+ E�O��k/� .��l/a G  ��k/*�,FY 
��k/*�,FO��m/*a ,FY ��,l  ��l/*a ,FY h[OY��O��,j A)*��m+ HO)*a ,��m+ 	*a ,FO*a I,� )*a I,��m+ J*a I,FY hY hOfE�O*a ,a K
 *a ,a La & )eE�O)*a ,a Ma Nlva Oa Plvm+ 	*a ,FY hO)*a ,k+ &*a ,FO� P D*a a Q*�,%a R%l )a *&E�O*a , *a +a ,a -a .�a /fa 0a 0 1UW X 2 3hY hO*a , 5 2�[a +�l 4kh *a +a ,a -a .�a /fa 0a 0 1[OY��UOfE�OfE�U[OY��O*a 5-E�O ,��,Ekih ��/a ,a S ��/j TY h[OY��O�a ,E^ OiE^ O ?k] a U-�,Ekh ] a U�/a V �E^ O] a U�/EQ^ OY h[OY��O] i�] a U-E^ OjvE^ O -k] �,Ekh �]  ] ] �/%E^ Y h[OY��O_ W)a ,FO] a *&�a ,FOa Xa Ya Zmv)a ,FO] a -E^ O <k] �,Ekh ] �/a [ ] �/a \&E^ O] j ]OY h[OY��O �k] kkh �_ ^ E^ Ob   a _  �a `�a a,a b-a c3l dE^ Y �a `�a a,a b-6l dE^ O]  �*�,� *�,] *�,FY hO*�,� *�,] *�,FY hO P*a 5-[a +�l 4kh ]  1*�,� *�,] *�,FY hO*�,� *�,] *�,FY hU[OY��U[OY�)Y hO�UUU& �,��&V&W�� $0 replacevariables replaceVariables� �&X� &X  �� ��� 0 thetext theText�  0 thevariables theVariables�� "0 thereplacements theReplacements�  &V ���������� 0 thetext theText�� 0 thevariables theVariables�� "0 thereplacements theReplacements�� 0 i  &W ����������������
�� 
leng
�� 
cobj
�� 
txdl
�� 
citm
�� 
pcls
�� 
ldt �� "0 customdatestyle customDateStyle
�� 
TEXT� d��,j  �Y hO Pk��,Ekh ��/)�,FO��-E�O��/�,�  )��/k+ )�,FY 
��/)�,FO��&E�Ojv)�,F[OY��O�&  �������&Y&Z���� (0 eliminatevariables eliminateVariables�� ��&[�� &[  ���� 0 thenote theNote��  &Y ���������� 0 thenote theNote�� 0 i  �� $0 variableposition variablePosition�� 0 
returnnote 
returnNote&Z ��������������
�� 
cpar
�� .corecnte****       ****
�� 
ret 
�� 
txdl����
�� 
ctxt�� ���-j k  �Y � *��-j kih ��/b   
�E�OY h[OY��O�kv)�,FO���-j   �[�\[Zk\Z�2�&E�Y 9�k  �[�\[Zl\Zi2�&E�Y !�[�\[Zk\Z�k2�[�\[Z�k\Zi2%�&E�O�)�,FO�&! ������&\&]���� &0 workingthecontext workingTheContext�� ��&^�� &^  �������� 0 
thecontext 
theContext�� 0 thevariables theVariables�� "0 thereplacements theReplacements��  &\ ������������������������ 0 
thecontext 
theContext�� 0 thevariables theVariables�� "0 thereplacements theReplacements�� 0 i  �� 0 variablefound variableFound�� (0 desiredcontextname desiredContextName�� $0 contextsinfolder contextsInFolder�� "0 positionoffound positionOfFound�� 20 namesofcontextsinfolder namesOfContextsInFolder�� 0 thecontainer theContainer�� 0 
newcontext 
newContext&] ����������������������������������
�� 
msng
�� 
leng
�� 
bool
�� 
pnam
�� 
cobj�� $0 replacevariables replaceVariables
�� 
ctnr
�� 
pcls
�� 
docu
�� 
FCDo
�� 
FCct
�� 
null
�� 
kocl
�� 
insh
�� 
prdt�� 
� .corecrel****      � null�� �� ߠ�  hY �kE�OfE�O -h���,	 ��&��,��/ eE�Y hO�kE�[OY��O� �Y �)��,��m+ E�O��,�,�  *�,�-E�Y 	��,�-E�O�E�OjvE�O +k��,Ekh ��/�,�6FO��/�  �E�Y h[OY��O�� ��/EY %��,E�O� *���*�-6��la  E�UO�U&" ����&_&`�� $0 findthevariables findTheVariables� �&a� &a  �� 0 
theproject 
theProject�  &_ �������������� 0 
theproject 
theProject� 0 thefullnote theFullNote� 0 thenote theNote� 0 i  � $0 cleanedvariables cleanedVariables� 0 thevariables theVariables� 0 thevar theVar� 0 optionlists optionLists� 0 thesplit theSplit� &0 newoptionlisttext newOptionListText� 0 newoptionlist newOptionList� 0 
emptyfound 
emptyFound� 0 j  &` ����������5�������
� 
FCDo
� 
FCno
� 
msng
� 
null
� 
cpar
� .corecnte****       ****
� 
txdl
� 
citm
� 
leng
� 
cobj
� 
bool
� 
spac� �������*�,Ҡ�,E�O��  jvjvlvY hO�E�O -��-j kih ��/b   ��/E�OY h[OY��O��  jvjvlvY hOjvE�O�b  %b  lv)�,FO��-E�O %k��,Ekh ��/� ��/�6FY h[OY��OjvE�Ok��,Ekh ��/b  	 ��/b  �& ��b  %�%�b  %�%�b  %�b  %b  b  �v)�,FO��/�-E�O��k/��/FO��l/E�Oa a lv)�,FO��-E�OeE�O �h� wk��,Ekh fE�O��/a   X�k  �[�\[Zl\Zi2E�Y 9���,  �[�\[Zk\Za 2E�Y �[�\[Zk\Z�k2�[�\[Z�k\Zi2%E�OeE�OY h[OY��[OY��O��6FY jv�6F[OY��Ojv)�,FOPUUO��lv&# ���&b&c�� *0 findthereplacements findTheReplacements� �&d� &d  ��� 0 thevariables theVariables� 0 optionlists optionLists�  &b 
����������� 0 thevariables theVariables� 0 optionlists optionLists� "0 thereplacements theReplacements� 0 thetitle theTitle� 0 i  � 0 thetext theText�  0 thereturninput theReturnInput�  0 thecurrentdate theCurrentDate� 0 	errortext 	errorText� 0 errornumber errorNumber&c ��4��F�Uc�iy��������������&e�~
� 
FCDo
� 
leng
� 
cobj
� .misccurdldt    ��� null
� 
quot
� 
dtxt
� .sysodlogaskr        TEXT
� 
ttxt� 0 englishtime englishTime
� 
time
� 
prmp
� .gtqpchltns    @   @ ns  
� 
TEXT� 0 	errortext 	errorText&e �}�|�{
�} 
errn�| 0 errornumber errorNumber�{  �~���
�*�, �jvE�O�E�O �k��,Ekh ��/� *j �6FY A��/� ��%��/%�%�%E�Y '��/jv ��/%�%E�Y ��%��/%�%�%E�O��/� � i��/jv  I�a a l a ,E�O��/a  #)�k+ E�O*j E�Oj�a ,FO��E�Y hO��6FY ��/a �l a &�6FW X  �a   fY hY h[OY�UUO�&$ �z�y�x&f&g�w�z &0 cleanexcessbreaks cleanExcessBreaks�y �v&h�v &h  �u�u 0 thetext theText�x  &f �t�s�r�q�p�o�t 0 thetext theText�s 0 i  �r 0 textends textEnds�q 0 j  �p 0 
textstarts 
textStarts�o 0 
thenewtext 
theNewText&g �n�m�l2J�k�j�ij
�n 
msng
�m 
cpar
�l .corecnte****       ****
�k 
ret 
�j 
txdl
�i 
ctxt�w ���  �Y hO��  �Y hO��-j k  �Y hO &��-j kih ��/� 
�E�OY h[OY��O &k��-j kh ��/� 
�E�OY h[OY��O�kv*�,FO�[�\[Z�\Z�2�&E�O�*�,FO�&% �hu�g�f&i&j�e�h .0 checkforothertemplate checkForOtherTemplate�g  �f  &i �d�c�b�a�`�_�^�]�\�[�Z�Y�d 0 thecount theCount�c (0 templatefolderlist templateFolderList�b 00 templatefoldernamelist templateFolderNameList�a 0 	thefolder 	theFolder�` 0 nextlistitem nextListItem�_ 00 selectedtemplatefolder selectedTemplateFolder�^ 00 templatefolderposition templateFolderPosition�] 20 existingtemplatefolders existingTemplateFolders�\ 0 i  �[ *0 oldtemplateprojects oldTemplateProjects�Z 40 possibletemplateprojects possibleTemplateProjects�Y 20 templatefolderisdropped templateFolderIsDropped&j !��X�W&k�V�U�T�S��R�Q�P��O��N��M��L�K�J�I�H�G�F�E�D�C�B�A�@r
�X 
FCDo
�W 
FCff&k  
�V 
pnam
�U .corecnte****       ****
�T 
kocl
�S 
cobj
�R 
ctnr
�Q 
pcls
�P 
FCAr
�O 
appr
�N 
prmp
�M 
okbt
�L 
mlsl�K 
�J .gtqpchltns    @   @ ns  �I (0 selectionpositions selectionPositions
�H 
leng
�G 
FCHi
�F 
FCfx
�E 
FCPs
�D FCPsFCPD
�C FCPsFCPd�B  �A  
�@ 
FCno�e���*�,�*�-�[�,\Zb  @1j E�O�j  �*�-E�OjvE�O 6�[��l kh �E�O��,�,�  �E�Y hO���,%E�O��6F[OY��O����a a a a ea  E�O�f  iY hO)��em+ E�OjvE�O k�a ,Ekh ��/�6F[OY��Y *�-�[�,\Zb  @1E�OjvE�OjvE�O �k�a ,Ekh ��/a ,e E�O a� 6�*a -�[[[�,\Z��/8\[a ,\Za 9A\[a ,\Za 9A1%E�Y %�*a -�[[�,\Z��/8\[a ,\Za 9A1%E�W X  h[OY��O -k�a ,Ekh ��/a ,a   ��/�6FY h[OY��UUO�&& �?��>�=&l&m�<�? 20 adjustoldtemplatesyntax adjustOldTemplateSyntax�> �;&n�; &n  �:�: *0 oldtemplateprojects oldTemplateProjects�=  &l �9�8�7�6�9 *0 oldtemplateprojects oldTemplateProjects�8 0 i  �7 0 tempname tempName�6 0 tempnote tempNote&m v�5�4�3��2�1�0�/�.���-�,;Qr
�5 
FCDo
�4 
leng
�3 
cobj
�2 
txdl
�1 
pnam
�0 
citm
�/ 
FCno
�. 
TEXT
�- 
FCft
�, .corecnte****       ****�<�*�, � �k��,Ekh ��/ ��)�,FO*�,E�O��-E�O*�,E�O��-E�Ob  )�,FO��&E�O��&E�O�)�,FO��-E�O��-E�O�)�,FO��&*�,FO��&*�,FO yk*�-j kh *�/ _�)�,FO*�,E�O��-E�O*�,E�O��-E�Ob  )�,FO��&E�O��&E�O�)�,FO��-E�O��-E�Oa )�,FO��&*�,FO��&*�,FU[OY��U[OY�Oa )�,FUU&' �+~�*�)&o&p�(�+ 80 checkingfordateinformation checkingForDateInformation�* �'&q�' &q  �&�%�$�& 0 theitem theItem�% 0 thevariables theVariables�$ "0 thereplacements theReplacements�)  &o �#�"�!� ���������������������# 0 theitem theItem�" 0 thevariables theVariables�! "0 thereplacements theReplacements�  0 thenote theNote� "0 theoriginalnote theOriginalNote� 0 
dueorstart 
dueOrStart� 0 
askfordate 
askForDate� &0 relativetoproject relativeToProject� 0 datevariable dateVariable� &0 thenoteparagraphs theNoteParagraphs� 0 i  � ,0 datevariableposition dateVariablePosition� 40 specialadjustforweekends specialAdjustForWeekends� 60 specialadjustforotherdays specialAdjustForOtherDays� 0 classofitem classOfItem� 0 displaytext displayText� 0 	inputdate 	inputDate� 0 	errortext 	errorText� 0 errornumber errorNumber� (0 possibledelimiters possibleDelimiters� 0 tempdate tempDate� "0 secondsdeferred secondsDeferred� 0 desireddate desiredDate� 0 relativedate relativeDate&p \���
�	�������������C�� P��[qsu����z���������&r���������������������� !%)-159=AD����d���������������!7?CH��Zbfk����
� 
FCDo
�
 
FCdw
�	 
FCcn
� 
FCno
� 
null
� 
cpar
� 
leng
� 
cobj
� 
bool
� 
msng
� 
pcls
�  
FCac
�� 
FCpr
�� 
quot
�� 
pnam
�� 
dtxt
�� .sysodlogaskr        TEXT
�� 
ttxt�� 0 	errortext 	errorText&r ������
�� 
errn�� 0 errornumber errorNumber��  ������ $0 getridofdateinfo getRidOfDateInfo�� 
�� 
txdl
�� 
citm
�� 
ctxt�� 
�� 
TEXT�� 0 englishtime englishTime
�� .misccurdldt    ��� null
�� 
time
�� 
FCPr
�� 
FCDd
�� 
FCDs�� :0 adjustforspecialandweekends adjustForSpecialAndWeekends�� 
0 notify  �(���*�,�*�k/�*�,���,E�O�EQ�O�E�OfE�OfE�OfE�O��-E�O 1k��,Ekh 
��/�
 
��/��& ��/E�OY h[OY��O�� �E�Y �� �E�Y hO��  a kvY��a  eE�Y hO�a  eE�Y hO 'k��,Ekh 
���/ eE�O�E�OY h[OY��OfE�OfE�O�a E�O�a ,a   
a E�Y �a ,a   
a E�Y hOa �%a %�%a %_ %�a ,%_ %a %E�O �a a  l !a ",E^ W "X # $] a %  a )��l+ &lvY hO] a '
 ] a (�& eE�Y hO] a )
 ] a *�& eE�Y hOa +a ,a -a .a /v)a 0,FO] a 1-E^ Oa 2)a 0,FO] a 3&E^ Y ��a 4
 	�a 5�& eE�Y hO�a 6
 	�a 7�& eE�Y hOa 8a 9a :a ;a <a =a >a ?a @a Aa Ba CvE^ O� ��/a D&] 6FY hO] )a 0,FO�a 1-EQ^ Oa E)a 0,FO] a D&E^ O)] k+ FE^ O] i  a )��l+ &lvY hO� �� &*j GE^ Oj] a H,FO] ] E^ OPY ��a ,a   a kvY hO�a I  :�a J,a K,E^ O] a   a )��l+ &lvY hO] ] E^ Y =�a J,a L,E^ O] a   *j GE^ Oj] a H,FY hO] ] E^ Y ��/] E^ O)] ��m+ ME^ O�a ,a  �a N 	 �a J,a K,a �& ~] *j G 0b   $)a Oa P�a ,%a Q%b  a Ra /+ SY hY A] �a J,a K, 0b   $)a Ta U�a ,%a V%b  a Wa /+ SY hY hY U�a J,a K,a  D] �a J,a K, 0b   $)a Xa Y�a ,%a Z%b  a [a /+ SY hY hY hY hO)��l+ &E�O] ��mvUUUU&( �������&s&t���� 0 englishtime englishTime�� ��&u�� &u  ���� 0 datedesired dateDesired��  &s $���������������������������������������������������������������������� 0 datedesired dateDesired�� 0 
monthfound 
monthFound�� 0 weekdayfound weekdayFound�� &0 minuteleadingzero minuteLeadingZero�� 0 timemissing timeMissing�� 0 daysmissing daysMissing�� 0 weeksmissing weeksMissing��  0 timedelimiters timeDelimiters�� 0 daydelimiters dayDelimiters��  0 weekdelimiters weekDelimiters�� *0 longmonthdelimiters longMonthDelimiters�� "0 monthdelimiters monthDelimiters�� .0 longweekdaydelimiters longWeekdayDelimiters�� &0 weekdaydelimiters weekdayDelimiters�� <0 specialrelativedaydelimiters specialRelativeDayDelimiters�� "0 otherdelimiters otherDelimiters�� 0 inthe inThe�� 00 howmanynumbersinputted howManyNumbersInputted�� 0 numlist numList�� 0 
checkinput 
checkInput�� &0 checkinputcleaned checkInputCleaned�� 0 i  �� 0 thedatecheck theDateCheck�� 0 
todaysdate 
todaysDate�� 0 
targetdate 
targetDate�� 0 thetime theTime�� &0 timestorelocation timeStoreLocation�� 0 tempnum tempNum�� 0 	inputlist 	inputList�� 0 tempitem tempItem�� 0 weeksdeferred weeksDeferred�� 0 daysdeferred daysDeferred� $0 timedeferredtemp timeDeferredTemp� 0 timedeferred timeDeferred� &0 totaltimedeferred totalTimeDeferred� 60 timefromtodayuntildesired timeFromTodayUntilDesired&t h�����#&/37;?CGKOSWZ�cgkosw{�����������������������������$)����Ruz�����������������*X����(����� � � � (0 isnumberidentifier isNumberIdentifier
� 
txdl
� 
citm
� 
leng
� 
cobj
� 
bool
� .misccurdldt    ��� null
� 
time� 00 understandabsolutedate understandAbsoluteDate
� 
nmbr�  �  � $0 figureoutthetime figureOutTheTime� &0 understandthetime understandTheTime
� 
cha 
� 
long
� 
pcls
� 
rvse� 0 howmanydays howManyDays
� 
days
� 
week� 00 daysfromtodaytoweekday daysFromTodayToWeekday� 40 figuringtimetodesiredday figuringTimeToDesiredDay����  jY hOjE�OjE�OfE�OfE�OfE�OfE�O������vE�O���mvE�O���mvE�O���a a a a a a a a a a vE�Oa a a a a a a  a !a "a #a $a %a vE�Oa &a 'a (a )a *a +a ,a -vE�Oa .a /a 0a 1a 2a 3a 4a -vE�Oa 5a 6a 7mvE�Oa 8a 9a :a ;a <�vE�Oa =E^ OjE^ OjvE^ O*a >�l+ ? a @E^ Y hO*a A�l+ ? a BE^ Y hO��%�%)a C,FO�a D-E^ OjvE^ O 9k] a E,Ekh ] a F] /a G ] a F] /] 6FY h[OY��O�] a Fk/E^ O] a H
 ] a Ia J&
 ] a Ka J&O*j LE^ Oj] a M,FO)] k+ NE^ O] i  iY hOa O)a C,FO] a E,k  ] ] a P&Y �] [a F\[Zl\Zi2E^ OjvE^ O] a E,E^ O �h] j �] jv 	 ] a F] /a Qa J& 3] a F] k/] a F] /%a P&] 6FOeE�O] lE^ Y 3] a F] /a P&E^ O] j ] ] 6FY hO] kE^ W X R Sh[OY�kO*] fee��+ TE^ O*] ] fm+ UE^ O] ] ] a P&Y hW X R ShO tk�a E,Ekh ��a F] /
 ��a F] /a J& ] E�OY hO] �a E, ,��a F] /
 ��a F] /a J& 
] E�Y hY h[OY��O��%�%�%�%�%�%�%�%*a C,FO�a D-E^ Oa Vkv*a C,FO jk] a E,Ekh ] a F] /a W 	 a X] a F] k/a Yk/a J& )] a F] /] a F] k/%] a F] k/FY h[OY��O lk] a E,Ekh ] a F] /a Z ? 3] a F] /a [&E^ O] a \,a [  ] kE^ Y hW X R ShY hOa ]E^ [OY��O] a E,E^ O �h] j �] jv 	 ] a F] /a ^a J& 3] a F] k/] a F] /%a P&] 6FOeE�O] lE^ Y G ] a F] /a P&E^ W X R S] kE^ O] j ] ] 6FY hO] kE^ W X R Sh[OY�WO] a _,E^ O�j 	 	�j a J& Ԡ 9)a `*l+ ?E�O)a a*l+ ?E�O] �a [&�a [&j  eE�Y hUO� ] a Fk/E^ Y jE^ O� *] �l+ bE^ Y �a c 
kE^ Y jE^ O*] �����+ TE^  O*]  ] �m+ UE^ !O] !j ] !] _ d ] _ e E^ "Y 	] !E^ "OPY ݢj	 	�j a J& g] a E,k eE�Y hO*] �ee��+ TE^  O*]  ] �m+ UE^ !O*�k+ fE^ O] !j ] _ d ] !E^ "Y 	] !E^ "Y h] a E,l eE�Y hO*] �fe��+ TE^  O*]  ] �m+ UE^ !O*�] a Fk/l+ gE^ #O] !j ] #] !E^ "Y 	] !E^ "O] "OP&) ���&v&w�� (0 isnumberidentifier isNumberIdentifier� �&x� &x  ��� (0 possibleidentifier possibleIdentifier� "0 containerstring containerString�  &v ��������� (0 possibleidentifier possibleIdentifier� "0 containerstring containerString� $0 numberidentifier numberIdentifier� 20 identifierisincontainer identifierIsInContainer� 40 positionoflastidentifier positionOfLastIdentifier� 0 charlist charList� 0 i  � "0 characterbefore characterBefore&w 	�������w�
� 
cha 
� 
leng
� 
cobj
� 
bool
� 
long�  �  
� 
pcls� �eE�OfE�OjE�O��-E�O %k��,Ekh ��/�  eE�O�E�Y h[OY��O�j 
 �k �& fE�Y 4��k/E�O 
��&E�W X  hO��	 	��,��& fE�Y hO�&* ����&y&z�� 0 howmanydays howManyDays� �&{� &{  ��� 0 numlist numList� 0 weeksmissing weeksMissing�  &y ���� 0 numlist numList� 0 weeksmissing weeksMissing� 0 daysdeferred daysDeferred&z �
� 
cobj� � ��l/E�Y ��k/E�O�&+ ���~�}&|&}�|� $0 figureoutthetime figureOutTheTime�~ �{&~�{ &~  �z�y�x�w�v�z 0 numlist numList�y 0 timemissing timeMissing�x 0 daysmissing daysMissing�w 0 weeksmissing weeksMissing�v &0 minuteleadingzero minuteLeadingZero�}  &| �u�t�s�r�q�p�u 0 numlist numList�t 0 timemissing timeMissing�s 0 daysmissing daysMissing�r 0 weeksmissing weeksMissing�q &0 minuteleadingzero minuteLeadingZero�p $0 timedeferredtemp timeDeferredTemp&} �o��n�m�l
�o 
cobj
�n 
txdl
�m 
long
�l 
ctxt�| =� 3� ��i/E�Y #�*�,FO�[�\[Zi\Zk��&��&2�&�&E�Y jE�O�&, �k��j�i&&��h�k &0 understandthetime understandTheTime�j �g&��g &�  �f�e�d�f $0 timedeferredtemp timeDeferredTemp�e 0 inthe inThe�d 0 timemissing timeMissing�i  & �c�b�a�`�_�^�c $0 timedeferredtemp timeDeferredTemp�b 0 inthe inThe�a 0 timemissing timeMissing�` 0 timedeferred timeDeferred�_ "0 minutesdeferred minutesDeferred�^ 0 hoursdeferred hoursDeferred&� �]�\�[�Z�Y�X�W�V�Ue�T�S�R��Q�P����]	`
�\ .sysodisAaleR        TEXT
�[ 
days�Z d
�Y 
ctxt
�X 
cha �W��
�V 
long�U���T 
�S 
hour
�R 
min 
�Q 
bool�P �h �� jE�Y �� �j OiE�OPY ߠ�  
�E�OPY Ѡ� b��&[�\[Z�\Zi2�&�&E�O��&[�\[Zk\Z�2�&�&E�O��  ��� �� E�Y !�� 	 �� �& 
�� E�Y �� �� E�OPY k�a  a j OiE�OPY S�a  J�a   �E�Y 9�� 	 	�a �& 
�� E�Y !��
 	�a �& 
�� E�Y 	��� E�Y hO�&- �O�N�M&�&��L�O 40 figuringtimetodesiredday figuringTimeToDesiredDay�N �K&��K &�  �J�I�J 0 monthdesired monthDesired�I 0 
daydesired 
dayDesired�M  &� �H�G�F�E�H 0 monthdesired monthDesired�G 0 
daydesired 
dayDesired�F 0 
todaysdate 
todaysDate�E $0 exactdesireddate exactDesiredDate&� �D�C�B�A�@
�D .misccurdldt    ��� null
�C 
time
�B 
day 
�A 
mnth
�@ 
year�L <*j  E�Oj��,FO�EQ�O���,FO���,FO�*j   ��,k��,FY hO��&. �?`�>�=&�&��<�? 00 daysfromtodaytoweekday daysFromTodayToWeekday�> �;&��; &�  �:�:  0 weekdaydesired weekdayDesired�=  &� �9�8�7�9  0 weekdaydesired weekdayDesired�8  0 currentweekday currentWeekday�7 0 daysdeferred daysDeferred&� �6�5�4�3
�6 .misccurdldt    ��� null
�5 
wkdy
�4 
long�3 �< 1*j  �,�&E�O��  jE�Y �� 
��E�Y 	��E�O�&/ �2��1�0&�&��/�2 00 understandabsolutedate understandAbsoluteDate�1 �.&��. &�  �-�- 0 thetext theText�0  &� �,�+�*�)�(�, 0 thetext theText�+ 0 thedate theDate�* 0 thepositions thePositions�) 0 i  �( 0 
targetdate 
targetDate&� �'�&�%�$�#��������"�!� �������������
�' .misccurdldt    ��� null
�& 
day 
�% 
mnth
�$ 
days
�# 
shdt�" 
�! 
txdl
�  
citm� 0 theday theDay� 0 themonth theMonth� 0 theyear theYear� 
� 
leng
� 
cobj
� 
time
� 
bool
� 
nmbr� 0 solvetheyear solveTheYear
� 
year� 40 adjustpositionsfornoyear adjustPositionsForNoYear�/*j  E�Ok��,FOl��,FO�k� E�O��,E�O��������v*�,FO��-E�O�ja ja ja E�O Fk�a ,Ekh �a �/ +a * ��a ,FY a * 
���,FY 	��a ,FU[OY��O��-E�O*j  E�Oj�a ,FO�a ,l	 �a ,ma & iY W�a ,m  *�a �a ,E/a &k+ �a ,FY 
*�k+ E�O�a �a ,E/a &��,FO�a ��,E/a &��,FO�&0 ����&�&��� 40 adjustpositionsfornoyear adjustPositionsForNoYear� �&�� &�  �� 0 thepositions thePositions�  &� ��� 0 thepositions thePositions� 0 yearposition yearPosition&� ��
�	� 0 theyear theYear�
 0 themonth theMonth�	 0 theday theDay� K��,k  ��,k��,FO��,k��,FY +�l  $��,��, ��,k��,FY ��,k��,FY hO�&1 ����&�&��� 0 solvetheyear solveTheYear� �&�� &�  �� 0 num  �  &� �� 0 num  &� �� ��� �� �� �Y �&2 �������&�&����� 
0 notify  �� ��&��� &�  ���������� 0 thetitle theTitle��  0 thedescription theDescription�� 0 thetype theType�� 0 theurl theURL��  &� ������������ 0 thetitle theTitle��  0 thedescription theDescription�� 0 thetype theType�� 0 theurl theURL�� 0 	isrunning 	isRunning&� ������������&��&k��$��J����������������������
�� .sysosigtsirr   ��� null
�� 
sisv
�� 
appr
�� 
subt�� 
�� .sysonotfnull��� ��� TEXT
�� 
prcs
�� 
bnid
�� .corecnte****       ****
�� 
appl
�� 
anot
�� 
dnot
�� 
iapp�� 
�� .registernull��� ��� null
�� 
leng
�� 
name
�� 
titl
�� 
desc
�� .notifygrnull��� ��� null�� �*j  �,� *��� Y t� *�-�[�,\Z�81j jE�UO� U� M*�b  �b  a b  a b  a  O�a ,j  *a �a ��b  a �a  Y hUY h&3 ��P����&�&�����  0 attachmentlist attachmentList�� ��&��� &�  ������ 0 theid theID�� 0 theclass theClass��  &� ������������ 0 theid theID�� 0 theclass theClass�� &0 theattachmentlist theAttachmentList�� ,0 numberoffileattached NumberOfFileAttached�� 0 i  &� ���e������n�����������
�� 
docu
�� 
FCac
�� kfrmID  
�� 
FCno
�� 
OSfA
�� 
OSin
�� 
atfn
�� 
TEXT
�� 
FCpr�� �jvE�O��k/ ���  E*��0�, 7�E�OkE�O ,h��*�/�,e *�/�,�&�6FY hO�kE�[OY��UY hO��  E*��0�, 7�E�OkE�O ,h��*�/�,e *�/�,�&�6FY hO�kE�[OY��UY hUO�&4 �������&�&����� $0 getridofdateinfo getRidOfDateInfo�� ��&��� &�  ������ "0 theoriginalnote theOriginalNote�� 0 
dueorstart 
dueOrStart��  &� ���������� "0 theoriginalnote theOriginalNote�� 0 
dueorstart 
dueOrStart� 0 numparagraphs numParagraphs� 0 i  � 0 datespot dateSpot� 0 thenote theNote&� 	�������E
� 
cpar
� 
leng
� 
ret 
� 
txdl
� .corecnte****       ****
� 
TEXT����� ���-�,E�O  k�kh ��/� 
�E�OY h[OY��O�kv)�,FO�k  &��-j k  �E�Y �[�\[Zl\Zi2�&E�Y 9��  �[�\[Zk\Z�2�&E�Y !�[�\[Zk\Z�k2�[�\[Z�k\Zi2%�&E�O�)�,FO�&5 �P��&�&��� $0 conditionalcheck conditionalCheck� �&�� &�  ���� 0 thetask theTask� 0 thevariables theVariables� "0 thereplacements theReplacements�  &� ������������������ 0 thetask theTask� 0 thevariables theVariables� "0 thereplacements theReplacements� 0 theoperation theOperation� 0 thefunction theFunction� 0 variablevalue variableValue� *0 operationdelimiters operationDelimiters� (0 functiondelimiters functionDelimiters� 0 combinators  � 0 	condition  � 0 thenote theNote� 0 i  � 0 parapointer paraPointer� 0 	connector  �  0 thecomparisons theComparisons� 0 
theresults 
theResults� 0 
thecompare 
theCompare&� ^\b�osw{�������������������������������       � $ '!6������ E�� Q j r v� � � � ���� �� � � � � � � � �������!�!!!!!)�� � 
�  
� 
docu
� 
FCdw
� 
FCcn
� 
FCno�  �  
� 
cpar
� 
leng� (0 determineoperation determineOperation� 
� 
txdl
� 
citm
� 
ctxt� 
� 
kocl
� 
cobj
� .corecnte****       ****� (0 evaluatecomparison evaluateComparison� 0 	clearnote 	clearNote
� 
bool
� 
FCcd��E�O�E�O�E�O�����������vE�O��a a a a a a a a a a a a a a a a a  a !a "a #a $a %a &a 'a (a )a *a +a ,a -a .vE�Oa /a 0lvE�OfE�Oa 1u*a 2k/a 3k/a 4,b �a 5,E�W 	X 6 7hO�a 8 < 6k�a 9-a :,Ekh �a 9�/a ; �E�O�a 9�/E�OY h[OY��Y hOa <E�O�a = 
a >E�Y hO)�k+ ?E�Oa @a Aa Ba Ca Dv)a E,FO�a F-E�Oa G)a E,FO�a H&E�Oa Ia Ja Ka La Ma Na Oa Pa Qv)a E,FO�a F-E�OjvE�O &�[a Ra Sl Tkh �)] ��m+ U%E�[OY��O)��l+ VO�a W 	 	�ea X&
 �a Y 	 
�fa X&a X& ,�a Z  a [�a 5,FY �a \  e�a ],FY hY hUU&6 �!<��&�&��� (0 determineoperation determineOperation� �&�� &�  �~�~ 0 thenote theNote�  &� �}�} 0 thenote theNote&� !F!I!Q!T![!^� '�� �Y hO�� �Y hO�� �Y h&7 �|!e�{�z&�&��y�| (0 evaluatecomparison evaluateComparison�{ �x&��x &�  �w�v�u�w 0 
comparison  �v 0 thevariables theVariables�u "0 thereplacements theReplacements�z  &� 
�t�s�r�q�p�o�n�m�l�k�t 0 
comparison  �s 0 thevariables theVariables�r "0 thereplacements theReplacements�q (0 functiondelimiters functionDelimiters�p 0 thefunction theFunction�o 0 comparepieces comparePieces�n 0 variablevalue variableValue�m 0 i  �l 0 	condition  �k $0 theconditionpart theConditionPart&� 5!t!x!|!�!�!�!�!�!�!�!�!�!�!�!�!�!�!�!�!�!�!�!�!�!�!�!�!�!�!�!�!��j�i"""�h�g�f�e�d�c�b�a�`"s�_"�"�"�"�"��j  �i &0 determinefunction determineFunction�h 
�g 
txdl
�f 
citm�e 0 clearempties clearEmpties
�d 
leng
�c 
cobj
�b 
nmbr�a  �`  
�_ 
bool�y�����������������a a a a a a a a a a a a a a a a a  vE�O*�k+ !E�O�a "a #a $b  a %v%)a &,FO�a '-E�O)�k+ (E�O�a ),l fY hOfE�O 1k�a ),Ekh �a *�/�a *k/  �a *�/E�OY h[OY��O�f  fY hO �a +&E�W X , -hOfE�O դa . 	 ��a *l/a +&a /& eE�Y ��a 0 	 ��a *l/a +&a /& eE�Y ��a 1 	 ��a *l/a +&a /& eE�Y o�a 2 	 ��a *l/a +&a /& eE�Y N�a *l/E�O �a +&E�W X , -hO�� 	 �a 3 a /&
 ��	 �a 4 a /&a /& eE�Y hW 	X , -fO�OP&8 �^"��]�\&�&��[�^ &0 determinefunction determineFunction�] �Z&��Z &�  �Y�Y 0 thenote theNote�\  &� �X�X 0 thenote theNote&� #######&#)#1#4#;#>�[ N�� �Y hO�� �Y hO�� �Y hO�� �Y hO�� �Y hO�� �Y h&9 �W#E�V�U&�&��T�W 0 clearempties clearEmpties�V �S&��S &�  �R�R 0 thelist theList�U  &� �Q�P�O�Q 0 thelist theList�P 0 newlist newList�O 0 i  &� �N�M#\#d�L
�N 
leng
�M 
cobj
�L 
bool�T :jvE�O 0k��,Ekh ��/�	 
��/��& ��/�6FY h[OY��O�&: �K#w�J�I&�&��H�K 0 	clearnote 	clearNote�J �G&��G &�  �F�E�F 0 thetask theTask�E 0 parapointer paraPointer�I  &� �D�C�B�D 0 thetask theTask�C 0 parapointer paraPointer�B 0 thenote theNote&� #��A�@�?�>�=�<�;�:#��9�8�7�6
�A 
FCDo
�@ 
FCno
�? 
cpar�>  �=  
�< 
ret 
�; 
txdl
�: 
leng
�9 
cobj
�8 
TEXT�7��
�6 
ctxt�H �� �*�, � ��,�-E�W 	X  hO�)�,FO��,k  ��,FOhY hO�k  �[�\[Zl\Zi2�&��,FY ?���,  �[�\[Zk\Z�2�&��,FY #*[�\[Zk\Z�k2*[�\[Z�k\Zi2%�&��,FUU&; �5#��4�3&�&��2�5 "0 customdatestyle customDateStyle�4 �1&��1 &�  �0�0 0 thedate theDate�3  &� 
�/�.�-�,�+�*�)�(�'�&�/ 0 thedate theDate�. "0 storedelimiters storeDelimiters�- 0 
returndate 
returnDate�, 0 
yearformat 
yearFormat�+ 0 monthformat monthFormat�* 0 	dayformat 	dayFormat�) 0 themonth theMonth�( 0 theday theDay�' 0 theyear theYear�& 0 
theweekday 
theWeekday&� �%#�$$$�$�#�"�!� $>$B$I��$^$e�$r$v$�$�$�$�$�$��$�$��%
�% 
txdl
�$ 
mnth
�# 
day 
�" 
ctxt
�! 
year
�  
wkdy
� 
cha ���
� 
leng
� 
long� 0 findreplace findReplace�2L)�,E�O�)�,FOb  EQ�O�E�O�E�O�E�O��,E�O��,�&E�O��,�&E�O��,�&E�Ob  � �E�Y �E�O�[�\[Z�\Zi2�&E�Ob  �  a E�O�a ,k  a �%E�Y hY a E�Ob  a  a E�O��&E�Y kb  a  a E�O��&[�\[Zk\Zm2�&E�Y Eb  a  *a E�O�a &�&E�O�a ,k  a �%E�Y hY a E�O�a &�&E�O*���m+ E�O*���m+ E�O*���m+ E�O*�a �m+ E�O�)�,FO�&< �%��&�&��� 0 findreplace findReplace� �&�� &�  ���� 0 thetext theText� 0 find  � 0 replace  �  &� ���� 0 thetext theText� 0 find  � 0 replace  &� ���%=
� 
txdl
� 
citm
� 
ctxt� !�)�,FO��-E�O�)�,FO��&E�O�)�,FO�&= �%G��
&�&��	� :0 adjustforspecialandweekends adjustForSpecialAndWeekends� �&�� &�  ���� 0 bday bDay� &0 adjustforweekends adjustForWeekends�  0 adjustforother adjustForOther�
  &� ����� ��������������� 0 bday bDay� &0 adjustforweekends adjustForWeekends�  0 adjustforother adjustForOther� 0 adjdate adjDate�  0 aday aDay�� 0 dif  �� 0 daydif dayDif�� 0 	adjdaysby 	adjDaysBy�� 0 weekdayweeks weekdayWeeks�� 0 leftoverdays leftoverDays�� 0 wday wDay�� 0 i  &� ��������������������������
�� .misccurdldt    ��� null
�� 
days
�� 
long�� 
�� 
dire
�� olierndD
�� .sysorondlong        doub
�� 
wkdy�� 
�� 
leng
�� 
cobj
�� 
bool
�� 
fri �	 ��EQ�O� �*j  E�O��E�O�k� !�&E�OjE�O��!��l E�O�l E�O�� E�O��,�&E�O�� 
�lE�Y hO��  �j  
�mE�Y �kE�OPY �k  �j  
�lE�Y hY hO��� E�Y hO� R Lkb  �,Ekh b  �/ -*�	 *��& ��,� �k� E�Y 	�m� E�Y hU[OY��Y hO�&> ��&�����&�&���
�� .aevtoappnull  �   � ****&� k    	z&�&�  �����  ��  ��  &� ������������ 0 	errortext 	errorText�� 0 errornumber errorNumber�� 0 	thefolder 	theFolder�� 0 
theproject 
theProject�� 0 i  &� ���������� ��� � ����������� ��� ��� �����&�����&k��������.��������=��������L��e��i��l��������������������� ����������kosw{~����������������>�@BILT��w�����������������"CGL�����r������������������y����
�� 
FCDo�� .0 checkforothertemplate checkForOtherTemplate�� :0 othertemplatescriptprojects otherTemplateScriptProjects
�� 
leng
�� 
btns
�� 
dflt�� 
�� .sysodlogaskr        TEXT
�� 
bhit�� (0 changeoldtemplates changeOldTemplates�� 20 adjustoldtemplatesyntax adjustOldTemplateSyntax
�� 
dtxt
�� 
ttxt�� 0 	errortext 	errorText&� ���
� 
errn� 0 errornumber errorNumber�  ����
�� 
FCff
�� 
pnam
�� .corecnte****       ****�� 0 thecount theCount
�� 
FCHi�� (0 templatefolderlist templateFolderList�� 00 templatefoldernamelist templateFolderNameList
�� 
kocl
�� 
cobj�� 0 nextlistitem nextListItem
�� 
ctnr
�� 
pcls
�� 
FCAr
�� 
appr
�� 
prmp
�� 
okbt�� 
�� .gtqpchltns    @   @ ns  �� 00 selectedtemplatefolder selectedTemplateFolder� (0 selectionpositions selectionPositions� 00 templatefolderposition templateFolderPosition
� 
null
� 
FCfx
� 
FCPs
� FCPsFCPD
� FCPsFCPd� 0 projectlist projectList� "0 projectnamelist projectNameList
� .sysodisAaleR        TEXT� "0 chooselisttitle chooseListTitle�  0 chooselisttext chooseListText� 0 chooselistok chooseListOK� "0 selectedproject selectedProject� "0 projectposition projectPosition� 20 selectedprojecttemplate selectedProjectTemplate� (0 defaultfolderfound defaultFolderFound
� 
FCno� "0 parawithpointer paraWithPointer
� 
cpar� 0 folderpointer folderPointer
� 
txdl
� 
citm� 0 newfoldertext newFolderText� &0 cleanedfoldertext cleanedFolderText
� 
TEXT� 00 selectedfoldertemplate selectedFolderTemplate� 0 containfolder containFolder����  �  � $0 findthevariables findTheVariables� 0 thevariables theVariables� 00 thelistvariableoptions theListVariableOptions� 0 justduplicate justDuplicate
� 
quot
� 
FCHe� 0 
folderlist 
folderList�  0 foldernamelist folderNameList�  0 selectedfolder selectedFolder�  0 folderposition folderPosition
� 
insh
� 
FCpr
� 
insl
� .coreclon****      � ****� (0 newprojectinstance newProjectInstance� 
0 notify  � $0 populatetemplate populateTemplate
� FCPsFCPh
� 
bool
� FCPsFCPa
� 
ID  � 0 theurl theURL
� .OFOCFCsynull���     obj � *0 findthereplacements findTheReplacements� "0 thereplacements theReplacements
� 
rslt� 0 tempnote tempNote
� 
ret � 0 newnote newNote�  0 theattachments theAttachments��	{�	w*�,	pb  	 �)j+ E�O�i  hY hO��,j &����lv�l� �,E�O��  )�k+ Y hY hO a a a l a ,Ec  W X  �a   hY hOfEc  	Y hO*a -a [a ,\Zb  @1j E` O*a -a [a ,\Zb  @1j j  �*a -a [[a ,\Zf8\[a ,\Za @CA1E` OjvE` O T_ [a  a !l kh a "E` #O�a $,a %,a &  a 'E` #Y hO_ #�a ,%E` #O_ #_ 6F[OY��O_ a (a )a *a +a ,a -a . /E` 0O_ 0f  hY hO)_ 0_ fm+ 1E` 2O_ a !_ 2/Ec  
Y a 3Ec  
Ob  
a 3  N*a 4-a [[[[a &,a ,\Zb  8\[a 5,\Za 69A\[a 5,\Za 79A\[a ,\Za 8@CA1E` 9Y G*a 4-a [[[[a &,\Zb  
8\[a 5,\Za 69A\[a 5,\Za 79A\[a ,\Za :@CA1E` 9OjvE` ;O $_ 9[a  a !l kh �a ,_ ;6F[OY��O_ ;�,j  a <j =OhY hOa >E` ?Oa @E` AOa BE` CO_ ;a (_ ?a *_ Aa ,_ Ca . /E` DO_ Df  hY hO)_ D_ ;fm+ 1E` EO_ 9a !_ E/E` FOfE` GO_ Fa H,b  qkE` IO :_ Fa H,a J-j kih _ Fa H,a J�/b   
�E` IY h[OY��O_ Fa H,a J_ I/E` KOa La Ma Na Oa Pa Qa .v)a R,FO_ Ka S-E` TOa U)a R,FOjvE` VO <k_ T�,Ekh _ Ta !�/a W _ Ta !�/a X&a Jk/_ V6FY h[OY��O �_ V�,k  #*a k/a [a ,\Z_ Va !k/81E` YY d*a -a [a ,\Z_ Va !i/81E�O Ek��,Ekh �a !�/a $,E` ZO_ Za ,_ Va !a [/  �a !�/E` YOY h[OY��OeE` GW X \ ]hY hO)_ Fk+ ^a !k/E` _O)_ Fk+ ^a !l/E` `Oa aE` bO_ _�,j  Da c_ d%b  %a e%_ d%a f%�a ga hlv�l� =�,E` bO_ ba i hY hY hO_ G	*a -a [[a ,\Zb  @C\[a j,\Zf8A1E` kOa lkvE` mO T_ k[a  a !l kh a nE` #O�a $,a %,a &  a oE` #Y hO_ #�a ,%E` #O_ #_ m6F[OY��Oa pE` ?Oa qE` AOa rE` CO_ ma (_ ?a *_ Aa ,_ Ca . /E` sO_ sf  hY 9_ sa tkv  a uE` YY #)_ s_ mfm+ 1kE` vO_ ka !_ v/E` YY hO_ ba w 4_ Ya x  ?b   a y  _ Fa z*a {-a |3l }E` ~Y _ Fa z*a {-6l }E` ~Y @b   a   _ Fa z_ Ya {-a |3l }E` ~Y _ Fa z_ Ya {-6l }E` ~Ob   )a �a �b  a ��+ �Y hO)_ ~jvjvm+ �O_ ~a 5,a � 
 _ ~a 5,a 6 a �& a �_ ~a 5,FY hOa �_ ~a �,%E` �Ob   )a �a �b  _ ��+ �Y hOa �E` bO 
*j �W X \ ]hOhY hOb   )a �a �b  a ��+ �Y hO)_ __ `l+ �E` �O_ �f  hY hO_ Ya �  ?b   a �  _ Fa z*a {-a |3l }E` ~Y _ Fa z*a {-6l }E` ~Y @b   a �  _ Fa z_ Ya {-a |3l }E` ~Y _ Fa z_ Ya {-6l }E` ~O_ ~a 5,a �  a �_ ~a 5,FY hO_ G �_ ~a H,EQ` �O 8_ Fa H,a J-j kih _ �a J�/b   
�E` IY hO[OY��O_ �kv)a R,FO_ Ik  _ �[a J\[Zl\Zi2a X&E` �Y c_ I_ Fa H,a J-j   _ �[a J\[Zk\Za [2a X&E` �Y 1_ �[a J\[Zk\Z_ Ik2_ �[a J\[Z_ Ik\Zi2%a X&E` �Oa �)a R,FO_ �_ ~a H,FY hO)_ ~_ __ �m+ �E` �Oa �_ ~a �,%E` �Ob   )a �a �b  _ ��+ �Y hO 
*j �W X \ ]hUU&? ��~�  �~  �  &@ �}&��} &�  &C&C &�&� &��|&��{&� ��z&��y
�z 
docu&� �&�&�  p Y d c n B J p 3 P K
�y kfrmID  
�| 
FCpr&� �&�&�  m C q R e D d 4 0 k d
�{ kfrmID  &A �x&��x &�  &��w�v�u�t�s�r�q�p�o�n�m�l�k�j�i&� �&�&� * $ p r o j e c t N a m e   $ v e r s i o n�w  �v  �u  �t  �s  �r  �q  �p  �o  �n  �m  �l  �k  �j  �i  &B �h&��h &�  &�&� �&�&� * $ p r o j e c t N a m e   $ v e r s i o n�� 
�� boovfals&D �g&��g &�  &�&��f�e�d�c�b�a�`�_�^�]�\�[�Z�Y&� �&�&�  p r o j e c t N a m e&� �&�&�  v e r s i o n�f  �e  �d  �c  �b  �a  �`  �_  �^  �]  �\  �[  �Z  �Y  &E �X&��X &�  &�&��W�V�U�T�S�R�Q�P�O�N�M�L�K�J&� �I&��I &�  &�&��H�G�F�E�D�C�B�A�@�?�>�=�<�;&� �&�&�  i P h o n e&� �&�&�  i P a d�H  �G  �F  �E  �D  �C  �B  �A  �@  �?  �>  �=  �<  �;  &� �:�9�:  �9  �W  �V  �U  �T  �S  �R  �Q  �P  �O  �N  �M  �L  �K  �J  &F �8&��8 &�  &�&�&�&�&�&�&�&� &�&� &��7&��6&� ��5&��4
�5 
docu&� �&�&�  p Y d c n B J p 3 P K
�4 kfrmID  
�7 
FCAr&� �&�&�  l d d D P v a d q M Q
�6 kfrmID  &� &�&� &��3&��2&� ��1&��0
�1 
docu&� �&�&�  p Y d c n B J p 3 P K
�0 kfrmID  
�3 
FCAr&� �&�&�  n D e F T M S 8 k R U
�2 kfrmID  &� &�&� &��/&��.&� ��-&��,
�- 
docu&� �&�&�  p Y d c n B J p 3 P K
�, kfrmID  
�/ 
FCAr&� �&�&�  l x 8 n r M q N b V -
�. kfrmID  &� &�&� &��+&��*&� ��)&��(
�) 
docu&� �&�&�  p Y d c n B J p 3 P K
�( kfrmID  
�+ 
FCAr&� �&�&�  g - 5 R s r t E n W y
�* kfrmID  &� &�&� &��'&��&&� ��%&��$
�% 
docu&� �&�&�  p Y d c n B J p 3 P K
�$ kfrmID  
�' 
FCAr&� �&�&�  m W V I L x o a t E 0
�& kfrmID  &� &�&� &��#&��"&� ��!&�� 
�! 
docu&� �&�&�  p Y d c n B J p 3 P K
�  kfrmID  
�# 
FCAr&� �&�&�  g i J O k l 3 q D c m
�" kfrmID  &� ' '  '�'�' ��'�
� 
docu' �''  p Y d c n B J p 3 P K
� kfrmID  
� 
FCAr' �''  d 8 _ U g 7 f b Y M u
� kfrmID  &G �'� '  w'''	'
''&H���������' �'' um;' �'' !�  [fN`'	 �'' !�  �є�'
 �'' bv�N�T�' �'' 
!�  �]�N-' �'' ]�O\&H �'' !�  �yv��  �  �  �  �  �  �  �  �  &I �'� '  '' �''  ( T o p   L e v e l )&J �'� '  ''������
�	�������' �''  i P h o n e' �''  1 1 1�  �  �  �  �  �
  �	  �  �  �  �  �  �  �  &K '' '�'� ' ���'��
�� 
docu' �' '   p Y d c n B J p 3 P K
�� kfrmID  
� 
FCpr' �'!'!  a j g y _ N J b q F 7
�  kfrmID  &L ������  ��  &M �'"'" : o m n i f o c u s : / / / t a s k / a j g y _ N J b q F 7��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ascr  ��ޭ