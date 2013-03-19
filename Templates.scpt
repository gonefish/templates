FasdUAS 1.101.10   ��   ��    k             l      ��  ��   a[
	# DESCRIPTION
	
	This script looks for a Template folder and asks you to pick one of the templates within to create 
	an instance of. It then allows you to select a folder for the instance and to choose the desired values
	for any variables designated in the last paragraph of the project's note (by default, "$" before a word
	designates it as a variable, an ode to my favorite CSS preprocessor, SASS).
	
	Some other goodies:
		-	You can specify relative start or due dates (one or the other, not both� yet) for the project
			and/or each task individually. To do so, put a paragraph somewhere in the note of that item that
			starts with either "Due" or "Start". Then use the same natural language date syntax as you can usually
			use in OmniFocus/ my "Later" Applescript: things like "today + 2d", "2d", "3w 4d 2pm", etc., will all
			work as expected, hopefully. All of these will be relative to the date you run the script.
		-	Variables can be used in project names and notes, task names and notes, and task context names
		-	On the first run it detects if you have projects using Curt Clifton's OmniFocus template syntax
			(to which I owe a lot of the good ideas in this script) and offers to change it for you.
		-	It offers to show you the new instance of the template once it has populated the instance.
		-	Automagically changes the new project instance to "Active" if the template project was "On Hold"
	
	
	# LICENSE
	
	Use it, change it, enjoy it. Please don't blatently pass off my work as your own. Be cool.
	
	
	# INSTALLATION
	
	-	Copy this script to ~/Library/Scripts/Applications/Omnifocus (you may have to use the
		Go > Go to Folder� menu in your file navigation application of choice as the user library
		folder is hidden on Mac OS X 10.7+. After you select this menu item, type the path above and
		hit enter).
	-	If you prefer, you can have this script be activated by a utility like Keyboard Maestro or FastScripts
	
	
	# VERSION INFORMATION
		
		0.3.5 (March 18, 2013): Added the ability to set dates in the format specified in as the short date format
		in your Languages and Text preference pane.
		0.3.1 (February 28, 2013): Bugfixes.
		0.3.0 (February 24, 2013): Fixed an issue with subtracting dates. Improved Growl alerts. Added an option to put "attachment: ask" in
		the task notes to have the script ask you for an attachment to that task. Variables can now be given a list of values to choose from
		using the notation $variableName {option 1, option 2, option3} in the project note. If you use the variable "$today", the
		variable will automatically be assigned the date you create the new instance. Added a screencast, readme, and website.
		0.2.9 (February 13, 2013): Preserves non-embedded attachments to tasks
		0.2.8 (February 13, 2013): Fixed the compile-time option of putting the project at the beginning of the list.
		Changed notifications over to Growl. You can also have the script ask if a certain task should be completed or
		not by putting "complete: ask" anywhere in its note.
		0.2.7 (February 11, 2013): Fixed an issue where the template wouldn't instantiate properly if there were no variables.
		Added a compile-time option to put the project at the beginning of the project list
		0.2.6 (February 7, 2013): Now works with template folders that are dropped.
		0.2.5 (January 30, 2013): New "$date" variables ��will ask you for a date instead of a string (you can use all of the
		same relative/ absolute shorthand forms in defining the date, and it can be used in conjunction with the "start" / 
		"due" identifiers)
		0.2.4 (January 22, 2013): Other bugfixes
		0.2.3 (January 22, 2013): Fix for setting default folder to a subfolder
		0.2.2 (January 22, 2013): Allows you to set both a start and due date. Fixes a bug where due/ start declarations
		in projects wouldn't be eliminated when a new instance was created.
		0.2.1 (January 22, 2013): Does a better job of cleaning up notes and allows variables on any line of project
		0.2 (January 21, 2013): using the keyword "ask" in after the start/due declaration in the note of a task/ project will have the
		script prompt you to enter a relative or absolute start/due date for that item. Similarly, you can use the keyword
		"project" to set the start/ due date relative to that of the project; the script will take whatever is
		after the keyword and subtract it from the due date/ add it to the start date of the project, as the
		case may be. Finally, using the (by default) ">>>" operator in the second, followed by a string that EXACTLY matches
		one of the folders in your OF library will skip the folder selection dialog and put the new instance
		directly in the designated folder. Plus, fancy icon.
		0.1.1 (January 18, 2013): Handles projects in a template folder without variables more gracefully (thanks, Sven!)
		0.1 (January 18, 2013): Initial release
		
	
	# BEING WORKED ON
	
	-	Nothing
	
	
	# KNOWN ISSUES

	- 	Nothing
     � 	 	&� 
 	 #   D E S C R I P T I O N 
 	 
 	 T h i s   s c r i p t   l o o k s   f o r   a   T e m p l a t e   f o l d e r   a n d   a s k s   y o u   t o   p i c k   o n e   o f   t h e   t e m p l a t e s   w i t h i n   t o   c r e a t e   
 	 a n   i n s t a n c e   o f .   I t   t h e n   a l l o w s   y o u   t o   s e l e c t   a   f o l d e r   f o r   t h e   i n s t a n c e   a n d   t o   c h o o s e   t h e   d e s i r e d   v a l u e s 
 	 f o r   a n y   v a r i a b l e s   d e s i g n a t e d   i n   t h e   l a s t   p a r a g r a p h   o f   t h e   p r o j e c t ' s   n o t e   ( b y   d e f a u l t ,   " $ "   b e f o r e   a   w o r d 
 	 d e s i g n a t e s   i t   a s   a   v a r i a b l e ,   a n   o d e   t o   m y   f a v o r i t e   C S S   p r e p r o c e s s o r ,   S A S S ) . 
 	 
 	 S o m e   o t h e r   g o o d i e s : 
 	 	 - 	 Y o u   c a n   s p e c i f y   r e l a t i v e   s t a r t   o r   d u e   d a t e s   ( o n e   o r   t h e   o t h e r ,   n o t   b o t h &   y e t )   f o r   t h e   p r o j e c t 
 	 	 	 a n d / o r   e a c h   t a s k   i n d i v i d u a l l y .   T o   d o   s o ,   p u t   a   p a r a g r a p h   s o m e w h e r e   i n   t h e   n o t e   o f   t h a t   i t e m   t h a t 
 	 	 	 s t a r t s   w i t h   e i t h e r   " D u e "   o r   " S t a r t " .   T h e n   u s e   t h e   s a m e   n a t u r a l   l a n g u a g e   d a t e   s y n t a x   a s   y o u   c a n   u s u a l l y 
 	 	 	 u s e   i n   O m n i F o c u s /   m y   " L a t e r "   A p p l e s c r i p t :   t h i n g s   l i k e   " t o d a y   +   2 d " ,   " 2 d " ,   " 3 w   4 d   2 p m " ,   e t c . ,   w i l l   a l l 
 	 	 	 w o r k   a s   e x p e c t e d ,   h o p e f u l l y .   A l l   o f   t h e s e   w i l l   b e   r e l a t i v e   t o   t h e   d a t e   y o u   r u n   t h e   s c r i p t . 
 	 	 - 	 V a r i a b l e s   c a n   b e   u s e d   i n   p r o j e c t   n a m e s   a n d   n o t e s ,   t a s k   n a m e s   a n d   n o t e s ,   a n d   t a s k   c o n t e x t   n a m e s 
 	 	 - 	 O n   t h e   f i r s t   r u n   i t   d e t e c t s   i f   y o u   h a v e   p r o j e c t s   u s i n g   C u r t   C l i f t o n ' s   O m n i F o c u s   t e m p l a t e   s y n t a x 
 	 	 	 ( t o   w h i c h   I   o w e   a   l o t   o f   t h e   g o o d   i d e a s   i n   t h i s   s c r i p t )   a n d   o f f e r s   t o   c h a n g e   i t   f o r   y o u . 
 	 	 - 	 I t   o f f e r s   t o   s h o w   y o u   t h e   n e w   i n s t a n c e   o f   t h e   t e m p l a t e   o n c e   i t   h a s   p o p u l a t e d   t h e   i n s t a n c e . 
 	 	 - 	 A u t o m a g i c a l l y   c h a n g e s   t h e   n e w   p r o j e c t   i n s t a n c e   t o   " A c t i v e "   i f   t h e   t e m p l a t e   p r o j e c t   w a s   " O n   H o l d " 
 	 
 	 
 	 #   L I C E N S E 
 	 
 	 U s e   i t ,   c h a n g e   i t ,   e n j o y   i t .   P l e a s e   d o n ' t   b l a t e n t l y   p a s s   o f f   m y   w o r k   a s   y o u r   o w n .   B e   c o o l . 
 	 
 	 
 	 #   I N S T A L L A T I O N 
 	 
 	 - 	 C o p y   t h i s   s c r i p t   t o   ~ / L i b r a r y / S c r i p t s / A p p l i c a t i o n s / O m n i f o c u s   ( y o u   m a y   h a v e   t o   u s e   t h e 
 	 	 G o   >   G o   t o   F o l d e r &   m e n u   i n   y o u r   f i l e   n a v i g a t i o n   a p p l i c a t i o n   o f   c h o i c e   a s   t h e   u s e r   l i b r a r y 
 	 	 f o l d e r   i s   h i d d e n   o n   M a c   O S   X   1 0 . 7 + .   A f t e r   y o u   s e l e c t   t h i s   m e n u   i t e m ,   t y p e   t h e   p a t h   a b o v e   a n d 
 	 	 h i t   e n t e r ) . 
 	 - 	 I f   y o u   p r e f e r ,   y o u   c a n   h a v e   t h i s   s c r i p t   b e   a c t i v a t e d   b y   a   u t i l i t y   l i k e   K e y b o a r d   M a e s t r o   o r   F a s t S c r i p t s 
 	 
 	 
 	 #   V E R S I O N   I N F O R M A T I O N 
 	 	 
 	 	 0 . 3 . 5   ( M a r c h   1 8 ,   2 0 1 3 ) :   A d d e d   t h e   a b i l i t y   t o   s e t   d a t e s   i n   t h e   f o r m a t   s p e c i f i e d   i n   a s   t h e   s h o r t   d a t e   f o r m a t 
 	 	 i n   y o u r   L a n g u a g e s   a n d   T e x t   p r e f e r e n c e   p a n e . 
 	 	 0 . 3 . 1   ( F e b r u a r y   2 8 ,   2 0 1 3 ) :   B u g f i x e s . 
 	 	 0 . 3 . 0   ( F e b r u a r y   2 4 ,   2 0 1 3 ) :   F i x e d   a n   i s s u e   w i t h   s u b t r a c t i n g   d a t e s .   I m p r o v e d   G r o w l   a l e r t s .   A d d e d   a n   o p t i o n   t o   p u t   " a t t a c h m e n t :   a s k "   i n 
 	 	 t h e   t a s k   n o t e s   t o   h a v e   t h e   s c r i p t   a s k   y o u   f o r   a n   a t t a c h m e n t   t o   t h a t   t a s k .   V a r i a b l e s   c a n   n o w   b e   g i v e n   a   l i s t   o f   v a l u e s   t o   c h o o s e   f r o m 
 	 	 u s i n g   t h e   n o t a t i o n   $ v a r i a b l e N a m e   { o p t i o n   1 ,   o p t i o n   2 ,   o p t i o n 3 }   i n   t h e   p r o j e c t   n o t e .   I f   y o u   u s e   t h e   v a r i a b l e   " $ t o d a y " ,   t h e 
 	 	 v a r i a b l e   w i l l   a u t o m a t i c a l l y   b e   a s s i g n e d   t h e   d a t e   y o u   c r e a t e   t h e   n e w   i n s t a n c e .   A d d e d   a   s c r e e n c a s t ,   r e a d m e ,   a n d   w e b s i t e . 
 	 	 0 . 2 . 9   ( F e b r u a r y   1 3 ,   2 0 1 3 ) :   P r e s e r v e s   n o n - e m b e d d e d   a t t a c h m e n t s   t o   t a s k s 
 	 	 0 . 2 . 8   ( F e b r u a r y   1 3 ,   2 0 1 3 ) :   F i x e d   t h e   c o m p i l e - t i m e   o p t i o n   o f   p u t t i n g   t h e   p r o j e c t   a t   t h e   b e g i n n i n g   o f   t h e   l i s t . 
 	 	 C h a n g e d   n o t i f i c a t i o n s   o v e r   t o   G r o w l .   Y o u   c a n   a l s o   h a v e   t h e   s c r i p t   a s k   i f   a   c e r t a i n   t a s k   s h o u l d   b e   c o m p l e t e d   o r 
 	 	 n o t   b y   p u t t i n g   " c o m p l e t e :   a s k "   a n y w h e r e   i n   i t s   n o t e . 
 	 	 0 . 2 . 7   ( F e b r u a r y   1 1 ,   2 0 1 3 ) :   F i x e d   a n   i s s u e   w h e r e   t h e   t e m p l a t e   w o u l d n ' t   i n s t a n t i a t e   p r o p e r l y   i f   t h e r e   w e r e   n o   v a r i a b l e s . 
 	 	 A d d e d   a   c o m p i l e - t i m e   o p t i o n   t o   p u t   t h e   p r o j e c t   a t   t h e   b e g i n n i n g   o f   t h e   p r o j e c t   l i s t 
 	 	 0 . 2 . 6   ( F e b r u a r y   7 ,   2 0 1 3 ) :   N o w   w o r k s   w i t h   t e m p l a t e   f o l d e r s   t h a t   a r e   d r o p p e d . 
 	 	 0 . 2 . 5   ( J a n u a r y   3 0 ,   2 0 1 3 ) :   N e w   " $ d a t e "   v a r i a b l e s    � w i l l   a s k   y o u   f o r   a   d a t e   i n s t e a d   o f   a   s t r i n g   ( y o u   c a n   u s e   a l l   o f   t h e 
 	 	 s a m e   r e l a t i v e /   a b s o l u t e   s h o r t h a n d   f o r m s   i n   d e f i n i n g   t h e   d a t e ,   a n d   i t   c a n   b e   u s e d   i n   c o n j u n c t i o n   w i t h   t h e   " s t a r t "   /   
 	 	 " d u e "   i d e n t i f i e r s ) 
 	 	 0 . 2 . 4   ( J a n u a r y   2 2 ,   2 0 1 3 ) :   O t h e r   b u g f i x e s 
 	 	 0 . 2 . 3   ( J a n u a r y   2 2 ,   2 0 1 3 ) :   F i x   f o r   s e t t i n g   d e f a u l t   f o l d e r   t o   a   s u b f o l d e r 
 	 	 0 . 2 . 2   ( J a n u a r y   2 2 ,   2 0 1 3 ) :   A l l o w s   y o u   t o   s e t   b o t h   a   s t a r t   a n d   d u e   d a t e .   F i x e s   a   b u g   w h e r e   d u e /   s t a r t   d e c l a r a t i o n s 
 	 	 i n   p r o j e c t s   w o u l d n ' t   b e   e l i m i n a t e d   w h e n   a   n e w   i n s t a n c e   w a s   c r e a t e d . 
 	 	 0 . 2 . 1   ( J a n u a r y   2 2 ,   2 0 1 3 ) :   D o e s   a   b e t t e r   j o b   o f   c l e a n i n g   u p   n o t e s   a n d   a l l o w s   v a r i a b l e s   o n   a n y   l i n e   o f   p r o j e c t 
 	 	 0 . 2   ( J a n u a r y   2 1 ,   2 0 1 3 ) :   u s i n g   t h e   k e y w o r d   " a s k "   i n   a f t e r   t h e   s t a r t / d u e   d e c l a r a t i o n   i n   t h e   n o t e   o f   a   t a s k /   p r o j e c t   w i l l   h a v e   t h e 
 	 	 s c r i p t   p r o m p t   y o u   t o   e n t e r   a   r e l a t i v e   o r   a b s o l u t e   s t a r t / d u e   d a t e   f o r   t h a t   i t e m .   S i m i l a r l y ,   y o u   c a n   u s e   t h e   k e y w o r d 
 	 	 " p r o j e c t "   t o   s e t   t h e   s t a r t /   d u e   d a t e   r e l a t i v e   t o   t h a t   o f   t h e   p r o j e c t ;   t h e   s c r i p t   w i l l   t a k e   w h a t e v e r   i s 
 	 	 a f t e r   t h e   k e y w o r d   a n d   s u b t r a c t   i t   f r o m   t h e   d u e   d a t e /   a d d   i t   t o   t h e   s t a r t   d a t e   o f   t h e   p r o j e c t ,   a s   t h e 
 	 	 c a s e   m a y   b e .   F i n a l l y ,   u s i n g   t h e   ( b y   d e f a u l t )   " > > > "   o p e r a t o r   i n   t h e   s e c o n d ,   f o l l o w e d   b y   a   s t r i n g   t h a t   E X A C T L Y   m a t c h e s 
 	 	 o n e   o f   t h e   f o l d e r s   i n   y o u r   O F   l i b r a r y   w i l l   s k i p   t h e   f o l d e r   s e l e c t i o n   d i a l o g   a n d   p u t   t h e   n e w   i n s t a n c e 
 	 	 d i r e c t l y   i n   t h e   d e s i g n a t e d   f o l d e r .   P l u s ,   f a n c y   i c o n . 
 	 	 0 . 1 . 1   ( J a n u a r y   1 8 ,   2 0 1 3 ) :   H a n d l e s   p r o j e c t s   i n   a   t e m p l a t e   f o l d e r   w i t h o u t   v a r i a b l e s   m o r e   g r a c e f u l l y   ( t h a n k s ,   S v e n ! ) 
 	 	 0 . 1   ( J a n u a r y   1 8 ,   2 0 1 3 ) :   I n i t i a l   r e l e a s e 
 	 	 
 	 
 	 #   B E I N G   W O R K E D   O N 
 	 
 	 - 	 N o t h i n g 
 	 
 	 
 	 #   K N O W N   I S S U E S 
 
 	 -   	 N o t h i n g 
   
  
 l     ��������  ��  ��        l          j     �� �� (0 startorendoffolder startOrEndOfFolder  m        �   
 s t a r t  O I change to "end" to put the new project at the end of the selected folder     �   �   c h a n g e   t o   " e n d "   t o   p u t   t h e   n e w   p r o j e c t   a t   t h e   e n d   o f   t h e   s e l e c t e d   f o l d e r      l          j    �� ��  0 variablesymbol variableSymbol  m       �    $  E ? change to whatever delimiter you want to denote your variables     �   ~   c h a n g e   t o   w h a t e v e r   d e l i m i t e r   y o u   w a n t   t o   d e n o t e   y o u r   v a r i a b l e s      l        ! "   j    �� #�� ,0 defaultfolderpointer defaultFolderPointer # m     $ $ � % %  > > > ! O I change to whatever delimtier you want to denote a default folder pointer    " � & & �   c h a n g e   t o   w h a t e v e r   d e l i m t i e r   y o u   w a n t   t o   d e n o t e   a   d e f a u l t   f o l d e r   p o i n t e r   ' ( ' l      ) * + ) j   	 �� ,�� 40 optionliststartdelimiter optionListStartDelimiter , m   	 
 - - � . .  { * = 7 start of a list of options for the preceeding variable    + � / / n   s t a r t   o f   a   l i s t   o f   o p t i o n s   f o r   t h e   p r e c e e d i n g   v a r i a b l e (  0 1 0 l      2 3 4 2 j    �� 5�� 00 optionlistenddelimiter optionListEndDelimiter 5 m     6 6 � 7 7  } 3 ; 5 end of a list of options for the preceeding variable    4 � 8 8 j   e n d   o f   a   l i s t   o f   o p t i o n s   f o r   t h e   p r e c e e d i n g   v a r i a b l e 1  9 : 9 l     ��������  ��  ��   :  ; < ; l     �� = >��   =   Don't change these    > � ? ? &   D o n ' t   c h a n g e   t h e s e <  @ A @ j    �� B�� 0 firstrun firstRun B m    ��
�� boovtrue A  C D C j    �� E�� .0 specialtemplatefolder specialTemplateFolder E m    ��
�� 
null D  F G F l     ��������  ��  ��   G  H I H l     �� J K��   J 1 + Growl variables, don't change these either    K � L L V   G r o w l   v a r i a b l e s ,   d o n ' t   c h a n g e   t h e s e   e i t h e r I  M N M j    �� O�� "0 applicationname applicationName O m     P P � Q Q  T e m p l a t e s . s c p t N  R S R j    �� T�� &0 scriptstartnotify scriptStartNotify T m     U U � V V  S c r i p t   S t a r t e d S  W X W j    �� Y�� "0 scriptendnotify scriptEndNotify Y m     Z Z � [ [  S c r i p t   E n d e d X  \ ] \ j     $�� ^�� 0 
datenotify 
dateNotify ^ m     # _ _ � ` `  D a t e   M i s m a t c h ]  a b a j   % +�� c�� $0 allnotifications allNotifications c J   % * d d  e f e o   % &���� &0 scriptstartnotify scriptStartNotify f  g h g o   & '���� "0 scriptendnotify scriptEndNotify h  i�� i o   ' (���� 0 
datenotify 
dateNotify��   b  j k j j   , .�� l�� ,0 defaultnotifications defaultNotifications l o   , -���� $0 allnotifications allNotifications k  m n m j   / 3�� o�� "0 iconapplication iconApplication o m   / 2 p p � q q  O m n i F o c u s . a p p n  r s r l     ��������  ��  ��   s  t u t j   4 8�� v�� &0 checkingsomething checkingSomething v m   4 7 w w � x x   u  y z y l     ��������  ��  ��   z  { | { l   � }���� } O    � ~  ~ O   � � � � k   
� � �  � � � Z   
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
�� .corecnte****       **** � l  � � ����� � 6 � � � � � 2   � ���
�� 
FCff � l  � � ����� � E   � � � � � n  � � � � � 1   � ���
�� 
pnam �  g   � � � m   � � � � � � �  T e m p l a t e��  ��  ��  ��  ��  ��  ��   � o      ���� 0 thecount theCount �  � � � Z   �� � ��� � � l  � � ����� � =  � � � � � l  � � ����� � I  � ��� ���
�� .corecnte****       **** � l  � � ����� � 6 � � � � � 2   � ���
�� 
FCff � l  � � ���~ � E   � � � � � n  � � �  � 1   � ��}
�} 
pnam   g   � � � m   � � �  T e m p l a t e�  �~  ��  ��  ��  ��  ��   � m   � ��|�|  ��  ��   � k   ��  r   � � 6 � �	 2   � ��{
�{ 
FCff	 l  � �
�z�y
 =  � � n  � � 1   � ��x
�x 
FCHi  g   � � m   � ��w
�w boovfals�z  �y   o      �v�v (0 templatefolderlist templateFolderList  r   � � J   � ��u�u   o      �t�t 00 templatefoldernamelist templateFolderNameList  X   �?�s k   :  r    m    �   o      �r�r 0 nextlistitem nextListItem  Z # !�q�p  = "#" l $�o�n$ n  %&% 1  �m
�m 
pcls& n '(' 1  	�l
�l 
ctnr( o  	�k�k 0 	thefolder 	theFolder�o  �n  # m  �j
�j 
FCAr! r  )*) m  ++ �,, !�  * o      �i�i 0 nextlistitem nextListItem�q  �p   -.- r  $1/0/ b  $-121 o  $'�h�h 0 nextlistitem nextListItem2 l ',3�g�f3 n  ',454 1  (,�e
�e 
pnam5 o  '(�d�d 0 	thefolder 	theFolder�g  �f  0 o      �c�c 0 nextlistitem nextListItem. 6�b6 r  2:787 o  25�a�a 0 nextlistitem nextListItem8 l     9�`�_9 n      :;:  ;  89; o  58�^�^ 00 templatefoldernamelist templateFolderNameList�`  �_  �b  �s 0 	thefolder 	theFolder o   � ��]�] (0 templatefolderlist templateFolderList <=< r  @_>?> I @[�\@A
�\ .gtqpchltns    @   @ ns  @ o  @C�[�[ 00 templatefoldernamelist templateFolderNameListA �ZBC
�Z 
apprB m  FIDD �EE , C h o o s e   T e m p l a t e   F o l d e rC �YFG
�Y 
prmpF m  LOHH �II � N o   o b v i o u s   t e m p l a t e   f o l d e r s   w e r e   f o u n d .   P l e a s e   s e l e c t   t h e   f o l d e r   i n   w h i c h   y o u   s t o r e   t e m p l a t e s .G �XJ�W
�X 
okbtJ m  RUKK �LL , S e t   a s   T e m p l a t e   F o l d e r�W  ? o      �V�V 00 selectedtemplatefolder selectedTemplateFolder= MNM Z `nOP�U�TO = `eQRQ o  `c�S�S 00 selectedtemplatefolder selectedTemplateFolderR m  cd�R
�R boovfalsP L  hj�Q�Q  �U  �T  N STS r  oUVU n o{WXW I  p{�PY�O�P (0 selectionpositions selectionPositionsY Z[Z o  ps�N�N 00 selectedtemplatefolder selectedTemplateFolder[ \]\ o  sv�M�M 00 templatefoldernamelist templateFolderNameList] ^�L^ m  vw�K
�K boovfals�L  �O  X  f  opV o      �J�J 00 templatefolderposition templateFolderPositionT _�I_ r  ��`a` n  ��bcb 4  ���Hd
�H 
cobjd o  ���G�G 00 templatefolderposition templateFolderPositionc o  ���F�F (0 templatefolderlist templateFolderLista o      �E�E .0 specialtemplatefolder specialTemplateFolder�I  ��   � r  ��efe m  ���D
�D 
nullf o      �C�C .0 specialtemplatefolder specialTemplateFolder � ghg l ���B�A�@�B  �A  �@  h iji Z  �kl�?mk = ��non o  ���>�> .0 specialtemplatefolder specialTemplateFoldero m  ���=
�= 
nulll r  ��pqp 6��rsr 2  ���<
�< 
FCfxs F  ��tut F  ��vwv l ��x�;�:x E  ��yzy n  ��{|{ 1  ���9
�9 
pnam| n ��}~} m  ���8
�8 
FCAr~  g  ��z m  �� ���  T e m p l a t e�;  �:  w l ����7�6� > ����� n ����� 1  ���5
�5 
FCPs�  g  ��� m  ���4
�4 FCPsFCPD�7  �6  u l ����3�2� > ����� n ����� 1  ���1
�1 
FCPs�  g  ��� m  ���0
�0 FCPsFCPd�3  �2  q o      �/�/ 0 projectlist projectList�?  m r  ���� 6���� 2  ���.
�. 
FCfx� F  ���� F  ���� l ����-�,� = ����� n ����� m  ���+
�+ 
FCAr�  g  ��� o  ���*�* .0 specialtemplatefolder specialTemplateFolder�-  �,  � l ���)�(� > ���� n ���� 1  ��'
�' 
FCPs�  g  ��� m  �&
�& FCPsFCPD�)  �(  � l 	��%�$� > 	��� n 
��� 1  
�#
�# 
FCPs�  g  

� m  �"
�" FCPsFCPd�%  �$  � o      �!�! 0 projectlist projectListj ��� r  !��� J  � �   � o      �� "0 projectnamelist projectNameList� ��� X  "G���� r  8B��� l 8=���� n  8=��� 1  9=�
� 
pnam� o  89�� 0 
theproject 
theProject�  �  � l     ���� n      ���  ;  @A� o  =@�� "0 projectnamelist projectNameList�  �  � 0 
theproject 
theProject� o  %(�� 0 projectlist projectList� ��� Z  H`����� = HO��� n  HM��� 1  KM�
� 
leng� o  HK�� "0 projectnamelist projectNameList� m  MN��  � k  R\�� ��� I RY���
� .sysodisAaleR        TEXT� m  RU�� ��� N o   p r o j e c t s   i n   a   " T e m p l a t e "   f o l d e r   w e r e   f o u n d .   M a k e   s u r e   t h a t   t h e   f o l d e r   n a m e   c o n t a i n s   t h e   w o r d   " T e m p l a t e "   s o   t h a t   i t   c a n   b e   f o u n d .�  � ��� L  Z\��  �  �  �  � ��� l aa���
�  �  �
  � ��� r  ah��� m  ad�� ��� 2 S e l e c t   a   T e m p l a t e   P r o j e c t� o      �	�	 "0 chooselisttitle chooseListTitle� ��� r  ip��� m  il�� ��� � W h i c h   o n e   o f   y o u r   t e m p l a t e   p r o j e c t s   w o u l d   y o u   l i k e   t o   m a k e   a   n e w   i n s t a n c e   o f ?� o      ��  0 chooselisttext chooseListText� ��� r  qx��� m  qt�� ��� & S e l e c t   T h i s   P r o j e c t� o      �� 0 chooselistok chooseListOK� ��� r  y���� I y����
� .gtqpchltns    @   @ ns  � o  y|�� "0 projectnamelist projectNameList� ���
� 
appr� o  ��� "0 chooselisttitle chooseListTitle� ���
� 
prmp� o  ����  0 chooselisttext chooseListText� � ���
�  
okbt� o  ������ 0 chooselistok chooseListOK��  � o      ���� "0 selectedproject selectedProject� ��� Z ��������� = ����� o  ������ "0 selectedproject selectedProject� m  ����
�� boovfals� L  ������  ��  ��  � ��� r  ����� n ����� I  ��������� (0 selectionpositions selectionPositions� ��� o  ������ "0 selectedproject selectedProject� ��� o  ������ "0 projectnamelist projectNameList� ���� m  ����
�� boovfals��  ��  �  f  ��� o      ���� "0 projectposition projectPosition� ��� r  ����� n  ����� 4  �����
�� 
cobj� o  ������ "0 projectposition projectPosition� o  ������ 0 projectlist projectList� o      ���� 20 selectedprojecttemplate selectedProjectTemplate� ��� l ����������  ��  ��  � ��� r  ����� 6��� � 2  ����
�� 
FCff  F  �� l ������ H  �� E  �� n �� 1  ����
�� 
pnam  g  �� m  ��		 �

  T e m p l a t e��  ��   l ������ = �� n �� 1  ����
�� 
FCHe  g  �� m  ����
�� boovfals��  ��  � o      ���� 0 
folderlist 
folderList�  r  �� J  �� �� m  �� �  ( T o p   L e v e l )��   o      ����  0 foldernamelist folderNameList  X  �M�� k  H  r    m  !! �""    o      ���� 0 nextlistitem nextListItem #$# Z 1%&����% = #'(' l )����) n  *+* 1  ��
�� 
pcls+ n ,-, 1  ��
�� 
ctnr- o  ���� 0 	thefolder 	theFolder��  ��  ( m  "��
�� 
FCAr& r  &-./. m  &)00 �11 !�  / o      ���� 0 nextlistitem nextListItem��  ��  $ 232 r  2?454 b  2;676 o  25���� 0 nextlistitem nextListItem7 l 5:8����8 n  5:9:9 1  6:��
�� 
pnam: o  56���� 0 	thefolder 	theFolder��  ��  5 o      ���� 0 nextlistitem nextListItem3 ;��; r  @H<=< o  @C���� 0 nextlistitem nextListItem= l     >����> n      ?@?  ;  FG@ o  CF����  0 foldernamelist folderNameList��  ��  ��  �� 0 	thefolder 	theFolder o  ������ 0 
folderlist 
folderList ABA l NN��������  ��  ��  B CDC r  NSEFE m  NO��
�� boovfalsF o      ���� (0 defaultfolderfound defaultFolderFoundD GHG r  TYIJI m  TU����  J o      ����  0 folderposition folderPositionH KLK Z  ZMMN����M E  ZgOPO l ZaQ����Q n  ZaRSR 1  ]a��
�� 
FCnoS o  Z]���� 20 selectedprojecttemplate selectedProjectTemplate��  ��  P o  af���� ,0 defaultfolderpointer defaultFolderPointerN k  jITT UVU r  joWXW m  jk���� X o      ���� "0 parawithpointer paraWithPointerV YZY Y  p�[��\]^[ Z ��_`����_ l ��a����a C  ��bcb n  ��ded 4  ����f
�� 
cparf o  ������ 0 i  e l ��g����g n  ��hih 1  ����
�� 
FCnoi o  ������ 20 selectedprojecttemplate selectedProjectTemplate��  ��  c o  ������ ,0 defaultfolderpointer defaultFolderPointer��  ��  ` r  ��jkj o  ������ 0 i  k o      ���� "0 parawithpointer paraWithPointer��  ��  �� 0 i  \ l s�l����l I s���m��
�� .corecnte****       ****m n s~non 2 z~��
�� 
cparo l szp����p n  szqrq 1  vz��
�� 
FCnor o  sv���� 20 selectedprojecttemplate selectedProjectTemplate��  ��  ��  ��  ��  ] m  ������ ^ m  ��������Z sts r  ��uvu n  ��wxw 4  ����y
�� 
cpary o  ������ "0 parawithpointer paraWithPointerx l ��z����z n  ��{|{ 1  ����
�� 
FCno| o  ������ 20 selectedprojecttemplate selectedProjectTemplate��  ��  v o      ���� 0 folderpointer folderPointert }~} r  ��� J  ���� ��� b  ����� o  ������ ,0 defaultfolderpointer defaultFolderPointer� m  ���� ���   � ���� o  ������ ,0 defaultfolderpointer defaultFolderPointer��  � n     ��� 1  ����
�� 
txdl�  f  ��~ ��� r  ����� n  ����� 2  ����
�� 
citm� o  ������ 0 folderpointer folderPointer� o      ���� 0 folderpointer folderPointer� ��� r  ����� m  ���� ���  � n     ��� 1  ����
�� 
txdl�  f  ��� ��� r  ����� c  ����� o  ������ 0 folderpointer folderPointer� m  ����
�� 
TEXT� o      ���� &0 folderpointername folderPointerName� ��� Y  �(�������� Z #������� = ��� n  ��� 1  ��
�� 
pnam� n  ��� 4  
���
�� 
cobj� o  ���� 0 i  � o  
���� 0 
folderlist 
folderList� o  ���� &0 folderpointername folderPointerName� r  ��� o  ���� 0 i  � o      ����  0 folderposition folderPosition��  ��  �� 0 i  � m  ������ � l ������ n  ���� 1  ��~
�~ 
leng� o  ���}�} 0 
folderlist 
folderList��  �  ��  � ��|� Z  )I���{�z� > ).��� o  ),�y�y  0 folderposition folderPosition� m  ,-�x�x  � k  1E�� ��� r  16��� m  12�w
�w boovtrue� o      �v�v (0 defaultfolderfound defaultFolderFound� ��u� r  7E��� n  7A��� 4  :A�t�
�t 
cobj� o  =@�s�s  0 folderposition folderPosition� o  7:�r�r 0 
folderlist 
folderList� o      �q�q 00 selectedfoldertemplate selectedFolderTemplate�u  �{  �z  �|  ��  ��  L ��� l NN�p�o�n�p  �o  �n  � ��� r  N_��� n  N[��� 4  V[�m�
�m 
cobj� m  YZ�l�l � n NV��� I  OV�k��j�k $0 findthevariables findTheVariables� ��i� o  OR�h�h 20 selectedprojecttemplate selectedProjectTemplate�i  �j  �  f  NO� o      �g�g 0 thevariables theVariables� ��� r  `q��� n  `m��� 4  hm�f�
�f 
cobj� m  kl�e�e � n `h��� I  ah�d��c�d $0 findthevariables findTheVariables� ��b� o  ad�a�a 20 selectedprojecttemplate selectedProjectTemplate�b  �c  �  f  `a� o      �`�` 00 thelistvariableoptions theListVariableOptions� ��� l rr�_�^�]�_  �^  �]  � ��� r  ry��� m  ru�� ���  � o      �\�\ 0 justduplicate justDuplicate� ��� Z  z����[�Z� = z���� l z��Y�X� n  z��� 1  }�W
�W 
leng� o  z}�V�V 0 thevariables theVariables�Y  �X  � m  ��U�U  � k  ���� ��� r  ����� n  ����� 1  ���T
�T 
bhit� l ����S�R� I ���Q��
�Q .sysodisAaleR        TEXT� b  ����� b  ����� b  ����� b  ����� b  ����� m  ���� �  � N o   v a r i a b l e s   w e r e   f o u n d   i n   t h e   s e l e c t e d   p r o j e c t .   D o   y o u   w a n t   t o   s i m p l y   c o p y   t h i s   p r o j e c t   t o   t h e   s e l e c t e d   f o l d e r ?   ( M a k e   s u r e   t h a t   a n y   v a r i a b l e s   a r e   a l l   i n   o n e   p a r a g r a p h   i n   t h e   p r o j e c t ' s   n o t e   a n d   a r e   i n   t h e   f o r m a t :  � 1  ���P
�P 
quot� o  ���O�O  0 variablesymbol variableSymbol� m  �� �  v a r i a b l e N a m e� 1  ���N
�N 
quot� m  �� �  ) .� �M
�M 
btns J  �� 	 m  ��

 �  N o ,   N e v e r m i n d	 �L m  �� �  Y e s ,   D u p l i c a t e�L   �K�J
�K 
dflt m  ���I�I �J  �S  �R  � o      �H�H 0 justduplicate justDuplicate� �G Z ���F�E > �� o  ���D�D 0 justduplicate justDuplicate m  �� �  Y e s ,   D u p l i c a t e L  ���C�C  �F  �E  �G  �[  �Z  �  l ���B�A�@�B  �A  �@    Z  �O�?�> H  �� o  ���=�= (0 defaultfolderfound defaultFolderFound k  �K   r  ��!"! m  ��## �$$ Z S e l e c t   a   F o l d e r   F o r   T h e   N e w   T e m p l a t e   I n s t a n c e" o      �<�< "0 chooselisttitle chooseListTitle  %&% r  ��'(' m  ��)) �** � I n   w h i c h   f o l d e r   w o u l d   y o u   l i k e   t o   c r e a t e   a   n e w   i n s t a n c e   o f   t h i s   t e m p l a t e ?( o      �;�;  0 chooselisttext chooseListText& +,+ r  ��-.- m  ��// �00 , M a k e   T e m p l a t e   I n s t a n c e. o      �:�: 0 chooselistok chooseListOK, 121 r  �343 I ��956
�9 .gtqpchltns    @   @ ns  5 o  ���8�8  0 foldernamelist folderNameList6 �778
�7 
appr7 o  ���6�6 "0 chooselisttitle chooseListTitle8 �59:
�5 
prmp9 o  ���4�4  0 chooselisttext chooseListText: �3;�2
�3 
okbt; o  ���1�1 0 chooselistok chooseListOK�2  4 o      �0�0  0 selectedfolder selectedFolder2 <�/< Z  K=>?@= = ABA o  
�.�.  0 selectedfolder selectedFolderB m  
�-
�- boovfals> L  �,�,  ? CDC = EFE o  �+�+  0 selectedfolder selectedFolderF J  GG H�*H m  II �JJ  ( T o p   L e v e l )�*  D K�)K r   'LML m   #NN �OO  T o p   L e v e lM o      �(�( 00 selectedfoldertemplate selectedFolderTemplate�)  @ k  *KPP QRQ r  *<STS l *8U�'�&U \  *8VWV l *6X�%�$X n *6YZY I  +6�#[�"�# (0 selectionpositions selectionPositions[ \]\ o  +.�!�!  0 selectedfolder selectedFolder] ^_^ o  .1� �   0 foldernamelist folderNameList_ `�` m  12�
� boovfals�  �"  Z  f  *+�%  �$  W m  67�� �'  �&  T o      ��  0 folderposition folderPositionR a�a r  =Kbcb n  =Gded 4  @G�f
� 
cobjf o  CF��  0 folderposition folderPositione o  =@�� 0 
folderlist 
folderListc o      �� 00 selectedfoldertemplate selectedFolderTemplate�  �/  �?  �>   ghg l PP����  �  �  h iji Z  Pukl��k = PWmnm o  PS�� 0 justduplicate justDuplicaten m  SVoo �pp  Y e s ,   D u p l i c a t el k  Zqqq rsr Z  Z�tu�vt = Zawxw o  Z]�� 00 selectedfoldertemplate selectedFolderTemplatex m  ]`yy �zz  T o p   L e v e lu Z  d�{|�}{ = dm~~ o  di�� (0 startorendoffolder startOrEndOfFolder m  il�� ��� 
 s t a r t| r  p���� l p����� I p��
��
�
 .coreclon****      � ****� o  ps�	�	 20 selectedprojecttemplate selectedProjectTemplate� ���
� 
insh� l v���� n  v��� 8 {�
� 
insl� n  v{��� 2 w{�
� 
FCpr�  g  vw�  �  �  �  �  � o      �� (0 newprojectinstance newProjectInstance�  } r  ����� l ����� � I ������
�� .coreclon****      � ****� o  ������ 20 selectedprojecttemplate selectedProjectTemplate� �����
�� 
insh� l �������� n  �����  ;  ��� n  ����� 2 ����
�� 
FCpr�  g  ����  ��  ��  �  �   � o      ���� (0 newprojectinstance newProjectInstance�  v Z  �������� = ����� o  ������ (0 startorendoffolder startOrEndOfFolder� m  ���� ��� 
 s t a r t� r  ����� l �������� I ������
�� .coreclon****      � ****� o  ������ 20 selectedprojecttemplate selectedProjectTemplate� �����
�� 
insh� l �������� n  ����� 8 ����
�� 
insl� n  ����� 2 ����
�� 
FCpr� o  ������ 00 selectedfoldertemplate selectedFolderTemplate��  ��  ��  ��  ��  � o      ���� (0 newprojectinstance newProjectInstance��  � r  ����� l �������� I ������
�� .coreclon****      � ****� o  ������ 20 selectedprojecttemplate selectedProjectTemplate� �����
�� 
insh� l �������� n  �����  ;  ��� n  ����� 2 ����
�� 
FCpr� o  ������ 00 selectedfoldertemplate selectedFolderTemplate��  ��  ��  ��  ��  � o      ���� (0 newprojectinstance newProjectInstances ��� n ����� I  ��������� 
0 notify  � ��� m  ���� ��� < C r e a t i n g   N e w   T e m p l a t e   I n s t a n c e� ��� m  ���� ��� 2 M o r e   i n p u t   m a y   b e   n e e d e d &� ��� o  ������ &0 scriptstartnotify scriptStartNotify� ���� m  ���� ���  ��  ��  �  f  ��� ��� n � ��� I  � ������� $0 populatetemplate populateTemplate� ��� o  ������ (0 newprojectinstance newProjectInstance� ��� J  ������  � ���� J  ������  ��  ��  �  f  ��� ��� Z 0������� G  ��� l ������ = ��� n  ��� 1  ��
�� 
FCPs� o  ���� (0 newprojectinstance newProjectInstance� m  ��
�� FCPsFCPh��  ��  � l ������ = ��� n  ��� 1  ��
�� 
FCPs� o  ���� (0 newprojectinstance newProjectInstance� m  ��
�� FCPsFCPD��  ��  � r  !,��� m  !$��
�� FCPsFCPa� n      ��� 1  '+��
�� 
FCPs� o  $'���� (0 newprojectinstance newProjectInstance��  ��  � ��� r  1@��� b  1<��� m  14�� ��� $ o m n i f o c u s : / / / t a s k /� l 4;������ n  4;��� 1  7;��
�� 
ID  � o  47���� (0 newprojectinstance newProjectInstance��  ��  � o      ���� 0 theurl theURL� ��� n AT��� I  BT������� 
0 notify  � ��� m  BE�� ��� 2 T e m p l a t e   I n s t a n c e   C r e a t e d� ��� m  EH�� ��� V C l i c k   h e r e   t o   s e e   t h e   n e w   p r o j e c t   i n s t a n c e .� ��� o  HM���� "0 scriptendnotify scriptEndNotify� ���� o  MP���� 0 theurl theURL��  ��  �  f  AB�    r  U\ m  UX �   o      ���� 0 justduplicate justDuplicate  Q  ]n	�� I `e������
�� .OFOCFCsynull���     obj ��  ��  	 R      ������
�� .ascrerr ****      � ****��  ��  ��   
��
 L  oq����  ��  �  �  j  n v� I  w������� 
0 notify    m  wz � < C r e a t i n g   N e w   T e m p l a t e   I n s t a n c e  m  z} � 2 M o r e   i n p u t   m a y   b e   n e e d e d &  o  }����� &0 scriptstartnotify scriptStartNotify �� m  �� �  ��  ��    f  vw  r  ��  n ��!"! I  ����#���� *0 findthereplacements findTheReplacements# $%$ o  ������ 0 thevariables theVariables% &��& o  ������ 00 thelistvariableoptions theListVariableOptions��  ��  "  f  ��  o      ���� "0 thereplacements theReplacements '(' Z ��)*����) = ��+,+ l ��-����- 1  ����
�� 
rslt��  ��  , m  ����
�� boovfals* L  ������  ��  ��  ( ./. l ����������  ��  ��  / 010 Z  �.23��42 = ��565 o  ������ 00 selectedfoldertemplate selectedFolderTemplate6 m  ��77 �88  T o p   L e v e l3 Z  ��9:��;9 = ��<=< o  ������ (0 startorendoffolder startOrEndOfFolder= m  ��>> �?? 
 s t a r t: r  ��@A@ l ��B����B I ����CD
�� .coreclon****      � ****C o  ������ 20 selectedprojecttemplate selectedProjectTemplateD ��E��
�� 
inshE l ��F����F n  ��GHG 8 ����
�� 
inslH n  ��IJI 2 ����
�� 
FCprJ  g  ����  ��  ��  ��  ��  A o      ���� (0 newprojectinstance newProjectInstance��  ; r  ��KLK l ��M����M I ����NO
�� .coreclon****      � ****N o  ������ 20 selectedprojecttemplate selectedProjectTemplateO ��P��
�� 
inshP l ��Q����Q n  ��RSR  ;  ��S n  ��TUT 2 ����
�� 
FCprU  g  ����  ��  ��  ��  ��  L o      ���� (0 newprojectinstance newProjectInstance��  4 Z  �.VW��XV = ��YZY o  ������ (0 startorendoffolder startOrEndOfFolderZ m  ��[[ �\\ 
 s t a r tW r  �]^] l �_����_ I ���`a
�� .coreclon****      � ****` o  ���� 20 selectedprojecttemplate selectedProjectTemplatea �~b�}
�~ 
inshb l c�|�{c n  ded 8 	�z
�z 
insle n  	fgf 2 	�y
�y 
FCprg o  �x�x 00 selectedfoldertemplate selectedFolderTemplate�|  �{  �}  ��  ��  ^ o      �w�w (0 newprojectinstance newProjectInstance��  X r  .hih l *j�v�uj I *�tkl
�t .coreclon****      � ****k o  �s�s 20 selectedprojecttemplate selectedProjectTemplatel �rm�q
�r 
inshm l &n�p�on n  &opo  ;  %&p n  %qrq 2 !%�n
�n 
FCprr o  !�m�m 00 selectedfoldertemplate selectedFolderTemplate�p  �o  �q  �v  �u  i o      �l�l (0 newprojectinstance newProjectInstance1 sts Z /Luv�k�ju = /:wxw n  /6yzy 1  26�i
�i 
FCPsz o  /2�h�h (0 newprojectinstance newProjectInstancex m  69�g
�g FCPsFCPhv r  =H{|{ m  =@�f
�f FCPsFCPa| n      }~} 1  CG�e
�e 
FCPs~ o  @C�d�d (0 newprojectinstance newProjectInstance�k  �j  t � Z  MC���c�b� o  MP�a�a (0 defaultfolderfound defaultFolderFound� k  S?�� ��� s  S_��� l SZ��`�_� n  SZ��� 1  VZ�^
�^ 
FCno� o  SV�]�] (0 newprojectinstance newProjectInstance�`  �_  � o      �\�\ 0 tempnote tempNote� ��� Y  `���[���� k  x��� ��� Z x����Z�Y� C  x���� n  x���� 4  {��X�
�X 
cpar� o  ~�W�W 0 i  � o  x{�V�V 0 tempnote tempNote� o  ���U�U ,0 defaultfolderpointer defaultFolderPointer� r  ����� o  ���T�T 0 i  � o      �S�S "0 parawithpointer paraWithPointer�Z  �Y  � ��R�  S  ���R  �[ 0 i  � l cr��Q�P� I cr�O��N
�O .corecnte****       ****� n cn��� 2 jn�M
�M 
cpar� l cj��L�K� n  cj��� 1  fj�J
�J 
FCno� o  cf�I�I 20 selectedprojecttemplate selectedProjectTemplate�L  �K  �N  �Q  �P  � m  rs�H�H � m  st�G�G��� ��� r  ����� J  ���� ��F� o  ���E
�E 
ret �F  � n     ��� 1  ���D
�D 
txdl�  f  ��� ��� Z  �)����� = ����� o  ���C�C "0 parawithpointer paraWithPointer� m  ���B�B � r  ����� c  ����� n  ����� 7 ���A��
�A 
cpar� m  ���@�@ � m  ���?�?��� o  ���>�> 0 tempnote tempNote� m  ���=
�= 
TEXT� l     ��<�;� o      �:�: 0 newnote newNote�<  �;  � ��� = ����� o  ���9�9 "0 parawithpointer paraWithPointer� l ����8�7� I ���6��5
�6 .corecnte****       ****� n  ����� 2 ���4
�4 
cpar� n  ����� 1  ���3
�3 
FCno� o  ���2�2 20 selectedprojecttemplate selectedProjectTemplate�5  �8  �7  � ��1� r  ����� c  ����� n  ����� 7 ���0��
�0 
cpar� m  ���/�/ � m  ���.�.��� o  ���-�- 0 tempnote tempNote� m  ���,
�, 
TEXT� l     ��+�*� o      �)�) 0 newnote newNote�+  �*  �1  � r  �)��� c  �%��� l �!��(�'� b  �!��� l ���&�%� n  ���� 7 ��$��
�$ 
cpar� m  �#�# � l ��"�!� \  ��� o  
� �  "0 parawithpointer paraWithPointer� m  
�� �"  �!  � o  ���� 0 tempnote tempNote�&  �%  � l  ���� n   ��� 7  ���
� 
cpar� l ���� [  ��� o  �� "0 parawithpointer paraWithPointer� m  �� �  �  � m  ����� o  �� 0 tempnote tempNote�  �  �(  �'  � m  !$�
� 
TEXT� l     ���� o      �� 0 newnote newNote�  �  � ��� r  *3��� m  *-�� ���  � n     ��� 1  .2�
� 
txdl�  f  -.� ��� r  4?��� o  47�� 0 newnote newNote� l     ���� n      ��� 1  :>�
� 
FCno� o  7:�
�
 (0 newprojectinstance newProjectInstance�  �  �  �c  �b  � ��� l DD�	���	  �  �  � ��� r  DV��� n DR��� I  ER� �� $0 populatetemplate populateTemplate   o  EH�� (0 newprojectinstance newProjectInstance  o  HK�� 0 thevariables theVariables � o  KN�� "0 thereplacements theReplacements�  �  �  f  DE� o      � �   0 theattachments theAttachments�  l WW��������  ��  ��   	 r  Wf

 b  Wb m  WZ � $ o m n i f o c u s : / / / t a s k / l Za���� n  Za 1  ]a��
�� 
ID   o  Z]���� (0 newprojectinstance newProjectInstance��  ��   o      ���� 0 theurl theURL	  n gz I  hz������ 
0 notify    m  hk �  S c r i p t   e n d e d  m  kn � V C l i c k   h e r e   t o   s e e   t h e   n e w   p r o j e c t   i n s t a n c e .  !  o  ns���� "0 scriptendnotify scriptEndNotify! "��" o  sv���� 0 theurl theURL��  ��    f  gh #��# Q  {�$%��$ I ~�������
�� .OFOCFCsynull���     obj ��  ��  % R      ������
�� .ascrerr ****      � ****��  ��  ��  ��   � 1    ��
�� 
FCDo  m     &&�                                                                                  OFOC  alis    X  Macintosh HD               �0ڲH+     OOmniFocus.app                                                   ��>2        ����  	                Applications    �1�      �>Lr       O  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  ��  ��   | '(' l     ��������  ��  ��  ( )*) l     ��������  ��  ��  * +,+ i   9 <-.- I      ��/���� (0 selectionpositions selectionPositions/ 010 o      ���� 0 
selectlist 
selectList1 232 o      ���� 0 originallist originalList3 4��4 o      ���� (0 multipleselections multipleSelections��  ��  . k     �55 676 Z     �89��:8 o     ���� (0 multipleselections multipleSelections9 k    q;; <=< r    >?> m    ����  ? o      ���� 0 choicesfound choicesFound= @A@ r    BCB J    
����  C o      ���� ,0 positionofselections positionOfSelectionsA DED r    FGF m    ���� G o      ���� 0 j  E H��H W    qIJI k   % lKK LML r   % (NON m   % &���� O o      ���� 0 k  M PQP r   ) ,RSR m   ) *��
�� boovfalsS o      ���� 0 achoicefound aChoiceFoundQ TUT W   - fVWV k   = aXX YZY Z   = [[\����[ E   = F]^] l  = A_����_ n   = A`a` 4   > A��b
�� 
cobjb o   ? @���� 0 k  a o   = >���� 0 
selectlist 
selectList��  ��  ^ l  A Ec����c n   A Eded 4   B E��f
�� 
cobjf o   C D���� 0 j  e o   A B���� 0 originallist originalList��  ��  \ k   I Wgg hih r   I Mjkj o   I J���� 0 j  k n      lml  ;   K Lm o   J K���� ,0 positionofselections positionOfSelectionsi non r   N Qpqp m   N O��
�� boovtrueq o      ���� 0 achoicefound aChoiceFoundo r��r r   R Wsts l  R Uu����u [   R Uvwv o   R S���� 0 choicesfound choicesFoundw m   S T���� ��  ��  t o      ���� 0 choicesfound choicesFound��  ��  ��  Z x��x r   \ ayzy [   \ _{|{ o   \ ]���� 0 k  | m   ] ^���� z o      ���� 0 k  ��  W G   1 <}~} l  1 6���� ?   1 6��� o   1 2���� 0 k  � l  2 5������ n   2 5��� 1   3 5��
�� 
leng� o   2 3���� 0 
selectlist 
selectList��  ��  ��  ��  ~ o   9 :���� 0 achoicefound aChoiceFoundU ���� r   g l��� [   g j��� o   g h���� 0 j  � m   h i���� � o      ���� 0 j  ��  J G    $��� l   ������ ?    ��� o    ���� 0 j  � l   ������ n    ��� 1    ��
�� 
leng� o    ���� 0 originallist originalList��  ��  ��  ��  � l   "������ =    "��� o    ���� 0 choicesfound choicesFound� l   !������ n    !��� 1    !��
�� 
leng� o    ���� 0 
selectlist 
selectList��  ��  ��  ��  ��  ��  : k   t ��� ��� r   t w��� m   t u���� � o      ���� 0 j  � ��� r   x {��� m   x y��
�� 
null� o      ���� ,0 positionofselections positionOfSelections� ���� W   | ���� k   � ��� ��� r   � ���� m   � ����� � o      ���� 0 k  � ��� W   � ���� k   � ��� ��� Z   � �������� E   � ���� l  � ������� n   � ���� 4   � ����
�� 
cobj� o   � ����� 0 k  � o   � ����� 0 
selectlist 
selectList��  ��  � l  � ������� n   � ���� 4   � ����
�� 
cobj� o   � ����� 0 j  � o   � ����� 0 originallist originalList��  ��  � r   � ���� o   � ����� 0 j  � o      ���� ,0 positionofselections positionOfSelections��  ��  � ���� r   � ���� [   � ���� o   � ����� 0 k  � m   � ����� � o      ���� 0 k  ��  � l  � ������� G   � ���� l  � ������� ?   � ���� o   � ��� 0 k  � l  � ���~�}� n   � ���� 1   � ��|
�| 
leng� o   � ��{�{ 0 
selectlist 
selectList�~  �}  ��  ��  � l  � ���z�y� >  � ���� o   � ��x�x ,0 positionofselections positionOfSelections� m   � ��w
�w 
null�z  �y  ��  ��  � ��v� r   � ���� [   � ���� o   � ��u�u 0 j  � m   � ��t�t � o      �s�s 0 j  �v  � l  � ���r�q� G   � ���� ?   � ���� o   � ��p�p 0 j  � l  � ���o�n� n   � ���� 1   � ��m
�m 
leng� o   � ��l�l 0 originallist originalList�o  �n  � l  � ���k�j� >  � ���� o   � ��i�i ,0 positionofselections positionOfSelections� m   � ��h
�h 
null�k  �j  �r  �q  ��  7 ��g� L   � ��� o   � ��f�f ,0 positionofselections positionOfSelections�g  , ��� l     �e�d�c�e  �d  �c  � ��� l     �b�a�`�b  �a  �`  � ��� i   = @��� I      �_��^�_ $0 populatetemplate populateTemplate� ��� o      �]�] 0 
theproject 
theProject� ��� o      �\�\ $0 cleanedvariables cleanedVariables� ��[� o      �Z�Z "0 thereplacements theReplacements�[  �^  � k    U�� ��� r     ��� J     �Y�Y  � o      �X�X .0 delimcleanedvariables delimCleanedVariables� ��� Y    $��W���V� r    ��� l   ��U�T� b    ��� o    �S�S  0 variablesymbol variableSymbol� l   ��R�Q� n    � � 4    �P
�P 
cobj o    �O�O 0 i    o    �N�N $0 cleanedvariables cleanedVariables�R  �Q  �U  �T  � l     �M�L n        ;     o    �K�K .0 delimcleanedvariables delimCleanedVariables�M  �L  �W 0 i  � m    	�J�J � l  	 �I�H n   	  1   
 �G
�G 
leng o   	 
�F�F $0 cleanedvariables cleanedVariables�I  �H  �V  � �E O   %U	
	 O   )T O   /S k   3R  r   3 B n  3 @ I   4 @�D�C�D  0 attachmentlist attachmentList  n   4 7 1   5 7�B
�B 
ID    g   4 5 �A c   7 < n   7 : 1   8 :�@
�@ 
pcls  g   7 8 m   : ;�?
�? 
TEXT�A  �C    f   3 4 o      �>�> &0 theattachmentlist theAttachmentList  !  Z   C ]"#�=�<" ?   C H$%$ n   C F&'& 1   D F�;
�; 
leng' o   C D�:�: $0 cleanedvariables cleanedVariables% m   F G�9�9  # r   K Y()( n  K U*+* I   L U�8,�7�8 $0 replacevariables replaceVariables, -.- n  L O/0/ 1   M O�6
�6 
pnam0  g   L M. 121 o   O P�5�5 .0 delimcleanedvariables delimCleanedVariables2 3�43 o   P Q�3�3 "0 thereplacements theReplacements�4  �7  +  f   K L) n     454 1   V X�2
�2 
pnam5  g   U V�=  �<  ! 676 r   ^ c898 J   ^ a:: ;�1; m   ^ _<< �==  �1  9 o      �0�0 (0 possibledatechange possibleDateChange7 >?> V   d �@A@ k   o �BB CDC r   o yEFE n  o wGHG I   p w�/I�.�/ 80 checkingfordateinformation checkingForDateInformationI JKJ  g   p qK LML o   q r�-�- .0 delimcleanedvariables delimCleanedVariablesM N�,N o   r s�+�+ "0 thereplacements theReplacements�,  �.  H  f   o pF o      �*�* (0 possibledatechange possibleDateChangeD O�)O Z   z �PQR�(P >  z �STS n   z ~UVU 4   { ~�'W
�' 
cobjW m   | }�&�& V o   z {�%�% (0 possibledatechange possibleDateChangeT m   ~ �$
�$ 
msngQ k   � �XX YZY Z   � �[\�#][ =  � �^_^ n   � �`a` 4   � ��"b
�" 
cobjb m   � ��!�! a o   � �� �  (0 possibledatechange possibleDateChange_ m   � �cc �dd 
 S t a r t\ r   � �efe n   � �ghg 4   � ��i
� 
cobji m   � ��� h o   � ��� (0 possibledatechange possibleDateChangef n     jkj 1   � ��
� 
FCDsk  g   � ��#  ] r   � �lml n   � �non 4   � ��p
� 
cobjp m   � ��� o o   � ��� (0 possibledatechange possibleDateChangem n     qrq 1   � ��
� 
FCDdr  g   � �Z s�s r   � �tut n   � �vwv 4   � ��x
� 
cobjx m   � ��� w o   � ��� (0 possibledatechange possibleDateChangeu n     yzy 1   � ��
� 
FCnoz  g   � ��  R {|{ =  � �}~} l  � ��� n   � ���� 1   � ��
� 
leng� o   � ��� (0 possibledatechange possibleDateChange�  �  ~ m   � ��� | ��� r   � ���� n   � ���� 4   � ���
� 
cobj� m   � ��� � o   � ��
�
 (0 possibledatechange possibleDateChange� n     ��� 1   � ��	
�	 
FCno�  g   � ��  �(  �)  A >  h n��� n   h l��� 4   i l��
� 
cobj� m   j k�� � o   h i�� (0 possibledatechange possibleDateChange� m   l m�
� 
msng? ��� Z   � ������ ?   � ���� n   � ���� 1   � ��
� 
leng� o   � ��� $0 cleanedvariables cleanedVariables� m   � �� �   � k   � ��� ��� r   � ���� n  � ���� 1   � ���
�� 
FCno�  g   � �� o      ���� 0 thefullnote theFullNote� ��� r   � ���� n  � ���� I   � �������� (0 eliminatevariables eliminateVariables� ���� o   � ����� 0 thefullnote theFullNote��  ��  �  f   � �� o      ���� 0 
thenewnote 
theNewNote� ���� r   � ���� n  � ���� I   � �������� $0 replacevariables replaceVariables� ��� o   � ����� 0 
thenewnote 
theNewNote� ��� o   � ����� .0 delimcleanedvariables delimCleanedVariables� ���� o   � ����� "0 thereplacements theReplacements��  ��  �  f   � �� n     ��� 1   � ���
�� 
FCno�  g   � ���  �  �  � ��� r   � ���� m   � ���
�� boovfals� o      ���� &0 attachmentrequest attachmentRequest� ��� Z   �=������� G   ���� E   ���� n  � ���� 1   � ���
�� 
FCno�  g   � �� m   ��� ���  a t t a c h m e n t :   a s k� E  ��� n 
��� 1  
��
�� 
FCno�  g  � m  
�� ���  a t t a c h m e n t : a s k� k  9�� ��� r  ��� m  ��
�� boovtrue� o      ���� &0 attachmentrequest attachmentRequest� ���� r  9��� n 3��� I  3������� $0 replacevariables replaceVariables� ��� n ��� 1  ��
�� 
FCno�  g  � ��� J  '�� ��� m  "�� ���  a t t a c h m e n t : a s k� ���� m  "%�� ���  a t t a c h m e n t :   a s k��  � ���� J  '/�� ��� m  '*�� ���  � ���� m  *-�� ���  ��  ��  ��  �  f  � n     ��� 1  48��
�� 
FCno�  g  34��  ��  ��  � ��� r  >N��� n >H��� I  ?H������� &0 cleanexcessbreaks cleanExcessBreaks� ���� n ?D��� 1  @D��
�� 
FCno�  g  ?@��  ��  �  f  >?� n     ��� 1  IM��
�� 
FCno�  g  HI� ��� Z  O�������� o  OP���� &0 attachmentrequest attachmentRequest� Q  S������ k  V���    r  Vo c  Vm l Vi���� I Vi����
�� .sysostdfalis    ��� null��   ����
�� 
prmp b  Ze	
	 b  Za m  Z] � | Y o u   i n d i c a t e d   y o u   w o u l d   l i k e   t o   a t t a c h   a   f i l e   t o   t h e   p r o j e c t   " n  ]` 1  ^`��
�� 
pnam  g  ]^
 m  ad � H " .   P l e a s e   s e l e c t   t h e   f i l e   t o   a t t a c h .��  ��  ��   m  il��
�� 
ctxt o      ���� 00 theattachfilepathalias theAttachFilePathAlias �� O  p� I x�����
�� .corecrel****      � null��   ��
�� 
kocl m  |��
�� 
OSfA ����
�� 
prdt K  �� ��
�� 
atfn o  ������ 00 theattachfilepathalias theAttachFilePathAlias ����
�� 
OSin m  ����
�� boovfals��  ��   n pu 1  qu��
�� 
FCno  g  pq��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��  �  !  O  ��"#" X  ��$��%$ I ������&
�� .corecrel****      � null��  & ��'(
�� 
kocl' m  ����
�� 
OSfA( ��)��
�� 
prdt) K  ��** ��+,
�� 
atfn+ o  ������ 0 theattachment theAttachment, ��-��
�� 
OSin- m  ����
�� boovfals��  ��  �� 0 theattachment theAttachment% o  ������ &0 theattachmentlist theAttachmentList# n ��./. 1  ����
�� 
FCno/  g  ��! 010 r  ��232 m  ����
�� boovfals3 o      ���� &0 attachmentrequest attachmentRequest1 454 l ����������  ��  ��  5 676 l ����89��  8   Going through the tasks   9 �:: 0   G o i n g   t h r o u g h   t h e   t a s k s7 ;<; Y  �O=��>?��= O  �J@A@ k  �IBB CDC r  �EFE n �GHG I   ��I����  0 attachmentlist attachmentListI JKJ n   LML 1  ��
�� 
ID  M  g   K N��N c  OPO n  QRQ 1  ��
�� 
pclsR  g  P m  ��
�� 
TEXT��  ��  H  f  � F o      ���� &0 theattachmentlist theAttachmentListD STS Z  )UV����U ?  WXW n  YZY 1  ��
�� 
lengZ o  ���� $0 cleanedvariables cleanedVariablesX m  ����  V r  %[\[ n !]^] I  !��_���� $0 replacevariables replaceVariables_ `a` n bcb 1  ��
�� 
pnamc  g  a ded o  ���� .0 delimcleanedvariables delimCleanedVariablese f��f o  ���� "0 thereplacements theReplacements��  ��  ^  f  \ n     ghg 1  "$��
�� 
pnamh  g  !"��  ��  T iji r  *-klk m  *+��
�� boovfalsl o      ���� "0 completethetask completeTheTaskj mnm Z  .xop����o G  .Gqrq E  .7sts n .3uvu 1  /3��
�� 
FCnov  g  ./t m  36ww �xx  c o m p l e t e : a s kr E  :Cyzy n :?{|{ 1  ;?��
�� 
FCno|  g  :;z m  ?B}} �~~  c o m p l e t e :   a s kp r  Jt� l Jr������ = Jr��� n  Jn��� 1  jn��
�� 
bhit� l Jj������ I Jj����
�� .sysodlogaskr        TEXT� b  JU��� b  JQ��� m  JM�� ��� � I n   t h e   n o t e ,   y o u   i n d i c a t e d   t h a t   y o u   w a n t e d   t o   b e   a s k e d   w h e t h e r   t o   c o m p l e t e   t h e   t a s k   "� l MP������ n  MP��� 1  NP��
�� 
pnam�  g  MN��  ��  � m  QT�� ��� � "   w h e n   y o u   c r e a t e   a   n e w   i n s t a n c e   o f   t h i s   p r o j e c t .   W o u l d   y o u   l i k e   t o   c o m p l e t e   t h i s   t a s k ?� ����
�� 
btns� J  X`�� ��� m  X[�� ���  Y e s ,   C o m p l e t e� ���� m  [^�� ��� ( N o ,   L e a v e   I n c o m p l e t e��  � �����
�� 
dflt� m  cd���� ��  ��  ��  � m  nq�� ���  Y e s ,   C o m p l e t e��  ��  � o      ���� "0 completethetask completeTheTask��  ��  n ��� Z  yE������ o  yz�� "0 completethetask completeTheTask� r  }���� m  }~�~
�~ boovtrue� n     ��� 1  ��}
�} 
FCcd�  g  ~��  � k  �E�� ��� r  ����� n ����� I  ���|��{�| $0 replacevariables replaceVariables� ��� n ����� 1  ���z
�z 
FCno�  g  ��� ��� J  ���� ��� m  ���� ���  c o m p l e t e : a s k� ��y� m  ���� ���  c o m p l e t e :   a s k�y  � ��x� J  ���� ��� m  ���� ���  � ��w� m  ���� ���  �w  �x  �{  �  f  ��� n     ��� 1  ���v
�v 
FCno�  g  ��� ��� r  ����� J  ���� ��u� m  ���� ���  �u  � o      �t�t (0 possibledatechange possibleDateChange� ��� V  ���� k  ��� ��� r  ����� n ����� I  ���s��r�s 80 checkingfordateinformation checkingForDateInformation� ���  g  ��� ��� o  ���q�q .0 delimcleanedvariables delimCleanedVariables� ��p� o  ���o�o "0 thereplacements theReplacements�p  �r  �  f  ��� o      �n�n (0 possibledatechange possibleDateChange� ��m� Z  �����l� > ����� n  ����� 4  ���k�
�k 
cobj� m  ���j�j � o  ���i�i (0 possibledatechange possibleDateChange� m  ���h
�h 
msng� k  ���� ��� Z  �����g�� = ����� n  ����� 4  ���f�
�f 
cobj� m  ���e�e � o  ���d�d (0 possibledatechange possibleDateChange� m  ���� ��� 
 S t a r t� r  ����� n  ����� 4  ���c�
�c 
cobj� m  ���b�b � o  ���a�a (0 possibledatechange possibleDateChange� n     � � 1  ���`
�` 
FCDs   g  ���g  � r  �� n  �� 4  ���_
�_ 
cobj m  ���^�^  o  ���]�] (0 possibledatechange possibleDateChange n      1  ���\
�\ 
FCDd  g  ��� �[ r  ��	
	 n  �� 4  ���Z
�Z 
cobj m  ���Y�Y  o  ���X�X (0 possibledatechange possibleDateChange
 n      1  ���W
�W 
FCno  g  ���[  �  = �  l ���V�U n  �� 1  ���T
�T 
leng o  ���S�S (0 possibledatechange possibleDateChange�V  �U   m  ���R�R  �Q r   n   4  �P
�P 
cobj m  �O�O  o  �N�N (0 possibledatechange possibleDateChange n      1  �M
�M 
FCno  g  �Q  �l  �m  � > ��  n  ��!"! 4  ���L#
�L 
cobj# m  ���K�K " o  ���J�J (0 possibledatechange possibleDateChange  m  ���I
�I 
msng� $%$ Z  V&'�H�G& ?  ()( n  *+* 1  �F
�F 
leng+ o  �E�E $0 cleanedvariables cleanedVariables) m  �D�D  ' k  R,, -.- r  1/0/ n +121 I   +�C3�B�C $0 replacevariables replaceVariables3 454 n  %676 1  !%�A
�A 
FCno7  g   !5 898 o  %&�@�@ .0 delimcleanedvariables delimCleanedVariables9 :�?: o  &'�>�> "0 thereplacements theReplacements�?  �B  2  f   0 n     ;<; 1  ,0�=
�= 
FCno<  g  +,. =�<= Z  2R>?�;�:> > 29@A@ n 27BCB m  37�9
�9 
FCctC  g  23A m  78�8
�8 
msng? r  <NDED n <HFGF I  =H�7H�6�7 &0 workingthecontext workingTheContextH IJI n =BKLK m  >B�5
�5 
FCctL  g  =>J MNM o  BC�4�4 .0 delimcleanedvariables delimCleanedVariablesN O�3O o  CD�2�2 "0 thereplacements theReplacements�3  �6  G  f  <=E n     PQP m  IM�1
�1 
FCctQ  g  HI�;  �:  �<  �H  �G  % RSR r  WZTUT m  WX�0
�0 boovfalsU o      �/�/ &0 attachmentrequest attachmentRequestS VWV Z  [�XY�.�-X G  [tZ[Z E  [d\]\ n [`^_^ 1  \`�,
�, 
FCno_  g  [\] m  `c`` �aa  a t t a c h m e n t :   a s k[ E  gpbcb n glded 1  hl�+
�+ 
FCnoe  g  ghc m  loff �gg  a t t a c h m e n t : a s kY k  w�hh iji r  wzklk m  wx�*
�* boovtruel o      �)�) &0 attachmentrequest attachmentRequestj m�(m r  {�non n {�pqp I  |��'r�&�' $0 replacevariables replaceVariablesr sts n |�uvu 1  }��%
�% 
FCnov  g  |}t wxw J  ��yy z{z m  ��|| �}}  a t t a c h m e n t : a s k{ ~�$~ m  �� ���  a t t a c h m e n t :   a s k�$  x ��#� J  ���� ��� m  ���� ���  � ��"� m  ���� ���  �"  �#  �&  q  f  {|o n     ��� 1  ���!
�! 
FCno�  g  ���(  �.  �-  W ��� r  ����� n ����� I  ��� ���  &0 cleanexcessbreaks cleanExcessBreaks� ��� n ����� 1  ���
� 
FCno�  g  ���  �  �  f  ��� n     ��� 1  ���
� 
FCno�  g  ��� ��� Z  ������ o  ���� &0 attachmentrequest attachmentRequest� Q  � ���� k  ���� ��� r  ����� c  ����� l ������ I �����
� .sysostdfalis    ��� null�  � ���
� 
prmp� b  ����� b  ����� m  ���� ��� v Y o u   i n d i c a t e d   y o u   w o u l d   l i k e   t o   a t t a c h   a   f i l e   t o   t h e   t a s k   "� n  ����� 1  ���
� 
pnam�  g  ��� m  ���� ��� H " .   P l e a s e   s e l e c t   t h e   f i l e   t o   a t t a c h .�  �  �  � m  ���
� 
ctxt� o      �� 00 theattachfilepathalias theAttachFilePathAlias� ��� l ������  �  �  � ��� O  ����� I ���
�	�
�
 .corecrel****      � null�	  � ���
� 
kocl� m  ���
� 
OSfA� ���
� 
prdt� K  ���� ���
� 
atfn� o  ���� 00 theattachfilepathalias theAttachFilePathAlias� ���
� 
OSin� m  ��� 
�  boovfals�  �  � n ����� 1  ����
�� 
FCno�  g  ���  � R      ������
�� .ascrerr ****      � ****��  ��  �  �  �  � ��� O  A��� X  @����� I ;�����
�� .corecrel****      � null��  � ����
�� 
kocl� m  #&��
�� 
OSfA� �����
�� 
prdt� K  )5�� ����
�� 
atfn� o  ,-���� 0 theattachment theAttachment� �����
�� 
OSin� m  01��
�� boovfals��  ��  �� 0 theattachment theAttachment� o  ���� &0 theattachmentlist theAttachmentList� n 
��� 1  
��
�� 
FCno�  g  � ���� r  BE��� m  BC��
�� boovfals� o      ���� &0 attachmentrequest attachmentRequest��  � ���� r  FI��� m  FG��
�� boovfals� o      ���� "0 completethetask completeTheTask��  A 4  �����
�� 
FCft� o  ������ 0 i  �� 0 i  > m  ������ ? l �������� I �������
�� .corecnte****       ****� n ����� 2 ����
�� 
FCft�  g  ����  ��  ��  ��  < ���� L  PR�� o  PQ���� &0 theattachmentlist theAttachmentList��   o   / 0���� 0 
theproject 
theProject 1   ) ,��
�� 
FCDo
 m   % &���                                                                                  OFOC  alis    X  Macintosh HD               �0ڲH+     OOmniFocus.app                                                   ��>2        ����  	                Applications    �1�      �>Lr       O  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  �E  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� i   A D��� I      ������� $0 replacevariables replaceVariables� ��� o      ���� 0 thetext theText� ��� o      ���� 0 thevariables theVariables� ���� o      ���� "0 thereplacements theReplacements��  ��  � k     b�� ��� Z    ������� =    ��� n     ��� 1    ��
�� 
leng� o     ���� 0 thevariables theVariables� m    ����  � L    
�� o    	���� 0 thetext theText��  ��  � ��� Y    _�������� k    Z�� ��� r    $�	 � l    	����	 n     			 4     ��	
�� 
cobj	 o    ���� 0 i  	 o    ���� 0 thevariables theVariables��  ��  	  n     			 1   ! #��
�� 
txdl	  f     !� 			 r   % *			
		 n   % (			 2   & (��
�� 
citm	 o   % &���� 0 thetext theText	
 o      ���� 0 thetext theText	 			 Z   + M		��		 =  + 3			 n   + 1			 m   / 1��
�� 
pcls	 l  + /	����	 n   + /			 4   , /��	
�� 
cobj	 o   - .���� 0 i  	 o   + ,���� "0 thereplacements theReplacements��  ��  	 m   1 2��
�� 
ldt 	 r   6 B			 c   6 >			 l  6 <	����	 n   6 <		 	 1   : <��
�� 
dstr	  l  6 :	!����	! n   6 :	"	#	" 4   7 :��	$
�� 
cobj	$ o   8 9���� 0 i  	# o   6 7���� "0 thereplacements theReplacements��  ��  ��  ��  	 m   < =��
�� 
ctxt	 n     	%	&	% 1   ? A��
�� 
txdl	&  f   > ?��  	 r   E M	'	(	' l  E I	)����	) n   E I	*	+	* 4   F I��	,
�� 
cobj	, o   G H���� 0 i  	+ o   E F���� "0 thereplacements theReplacements��  ��  	( n     	-	.	- 1   J L��
�� 
txdl	.  f   I J	 	/	0	/ r   N S	1	2	1 c   N Q	3	4	3 o   N O���� 0 thetext theText	4 m   O P��
�� 
TEXT	2 o      ���� 0 thetext theText	0 	5��	5 r   T Z	6	7	6 J   T V����  	7 n     	8	9	8 1   W Y��
�� 
txdl	9  f   V W��  �� 0 i  � m    ���� � l   	:����	: n    	;	<	; 1    ��
�� 
leng	< o    ���� 0 thevariables theVariables��  ��  ��  � 	=��	= L   ` b	>	> o   ` a���� 0 thetext theText��  � 	?	@	? l     ��������  ��  ��  	@ 	A	B	A l     ��������  ��  ��  	B 	C	D	C i   E H	E	F	E I      ��	G���� (0 eliminatevariables eliminateVariables	G 	H��	H o      ���� 0 thenote theNote��  ��  	F Z     �	I	J��	K	I =    		L	M	L l    	N����	N I    ��	O��
�� .corecnte****       ****	O n     	P	Q	P 2   ��
�� 
cpar	Q o     ���� 0 thenote theNote��  ��  ��  	M m    ���� 	J L    	R	R m    	S	S �	T	T  ��  	K k    �	U	U 	V	W	V Y    <	X��	Y	Z	[	X Z   ! 7	\	]����	\ C   ! +	^	_	^ n   ! %	`	a	` 4   " %��	b
�� 
cpar	b o   # $���� 0 i  	a o   ! "���� 0 thenote theNote	_ o   % *����  0 variablesymbol variableSymbol	] k   . 3	c	c 	d	e	d r   . 1	f	g	f o   . /���� 0 i  	g o      �� $0 variableposition variablePosition	e 	h�~	h  S   2 3�~  ��  ��  �� 0 i  	Y l   	i�}�|	i I   �{	j�z
�{ .corecnte****       ****	j n    	k	l	k 2   �y
�y 
cpar	l o    �x�x 0 thenote theNote�z  �}  �|  	Z m    �w�w 	[ m    �v�v��	W 	m	n	m r   = D	o	p	o J   = @	q	q 	r�u	r o   = >�t
�t 
ret �u  	p n     	s	t	s 1   A C�s
�s 
txdl	t  f   @ A	n 	u	v	u Z   E �	w	x	y	z	w =  E N	{	|	{ o   E F�r�r $0 variableposition variablePosition	| l  F M	}�q�p	} I  F M�o	~�n
�o .corecnte****       ****	~ l  F I	�m�l	 n   F I	�	�	� 2  G I�k
�k 
cpar	� o   F G�j�j 0 thenote theNote�m  �l  �n  �q  �p  	x r   Q `	�	�	� c   Q ^	�	�	� l  Q \	��i�h	� n   Q \	�	�	� l  R \	��g�f	� 7  R \�e	�	�
�e 
cpar	� m   V X�d�d 	� m   Y [�c�c���g  �f  	� o   Q R�b�b 0 thenote theNote�i  �h  	� m   \ ]�a
�a 
ctxt	� o      �`�` 0 
returnnote 
returnNote	y 	�	�	� =  c f	�	�	� o   c d�_�_ $0 variableposition variablePosition	� m   d e�^�^ 	� 	��]	� r   i x	�	�	� c   i v	�	�	� l  i t	��\�[	� l  i t	��Z�Y	� n   i t	�	�	� 7  j t�X	�	�
�X 
cpar	� m   n p�W�W 	� m   q s�V�V��	� o   i j�U�U 0 thenote theNote�Z  �Y  �\  �[  	� m   t u�T
�T 
ctxt	� o      �S�S 0 
returnnote 
returnNote�]  	z r   { �	�	�	� c   { �	�	�	� l  { �	��R�Q	� b   { �	�	�	� l  { �	��P�O	� n   { �	�	�	� 7  | ��N	�	�
�N 
cpar	� m   � ��M�M 	� l  � �	��L�K	� \   � �	�	�	� o   � ��J�J $0 variableposition variablePosition	� m   � ��I�I �L  �K  	� o   { |�H�H 0 thenote theNote�P  �O  	� l  � �	��G�F	� n   � �	�	�	� 7  � ��E	�	�
�E 
cpar	� l  � �	��D�C	� [   � �	�	�	� o   � ��B�B $0 variableposition variablePosition	� m   � ��A�A �D  �C  	� m   � ��@�@��	� o   � ��?�? 0 thenote theNote�G  �F  �R  �Q  	� m   � ��>
�> 
ctxt	� o      �=�= 0 
returnnote 
returnNote	v 	�	�	� r   � �	�	�	� m   � �	�	� �	�	�  	� n     	�	�	� 1   � ��<
�< 
txdl	�  f   � �	� 	��;	� L   � �	�	� o   � ��:�: 0 
returnnote 
returnNote�;  	D 	�	�	� l     �9�8�7�9  �8  �7  	� 	�	�	� l     �6�5�4�6  �5  �4  	� 	�	�	� i   I L	�	�	� I      �3	��2�3 &0 workingthecontext workingTheContext	� 	�	�	� o      �1�1 0 
thecontext 
theContext	� 	�	�	� o      �0�0 0 thevariables theVariables	� 	��/	� o      �.�. "0 thereplacements theReplacements�/  �2  	� O     �	�	�	� Z    �	�	��-	�	� =   	�	�	� o    �,�, 0 
thecontext 
theContext	� m    �+
�+ 
msng	� L   
 �*�*  �-  	� k    �	�	� 	�	�	� r    	�	�	� m    �)�) 	� o      �(�( 0 i  	� 	�	�	� r    	�	�	� m    �'
�' boovfals	� o      �&�& 0 variablefound variableFound	� 	�	�	� V    E	�	�	� k   ( @	�	� 	�	�	� Z  ( :	�	��%�$	� l  ( 0	��#�"	� E   ( 0	�	�	� n   ( +	�	�	� 1   ) +�!
�! 
pnam	� o   ( )� �  0 
thecontext 
theContext	� l  + /	���	� n   + /	�	�	� 4   , /�	�
� 
cobj	� o   - .�� 0 i  	� o   + ,�� 0 thevariables theVariables�  �  �#  �"  	� r   3 6	�	�	� m   3 4�
� boovtrue	� o      �� 0 variablefound variableFound�%  �$  	� 	��	� r   ; @	�	�	� [   ; >	�	�	� o   ; <�� 0 i  	� m   < =�� 	� o      �� 0 i  �  	� F    '	�	�	� l    	���	� B     	�	�	� o    �� 0 i  	� l   	���	� n    	�	�	� 1    �
� 
leng	� o    �� 0 thevariables theVariables�  �  �  �  	� l  # %	���	� H   # %	�	� o   # $�� 0 variablefound variableFound�  �  	� 	��
	� Z   F �	�	��	
 	� H   F H

 o   F G�� 0 variablefound variableFound	� L   K M

 o   K L�� 0 
thecontext 
theContext�	  
  k   P �

 


 r   P \


 n  P Z

	
 I   Q Z�

�� $0 replacevariables replaceVariables

 


 n   Q T


 1   R T�
� 
pnam
 o   Q R�� 0 
thecontext 
theContext
 


 o   T U�� 0 thevariables theVariables
 
�
 o   U V� �  "0 thereplacements theReplacements�  �  
	  f   P Q
 o      ���� (0 desiredcontextname desiredContextName
 


 Z   ] x

��

 l  ] d
����
 =  ] d


 n   ] b


 1   ` b��
�� 
pcls
 l  ] `
����
 n   ] `


 1   ^ `��
�� 
ctnr
 o   ] ^���� 0 
thecontext 
theContext��  ��  
 m   b c��
�� 
docu��  ��  
 r   g n

 
 n   g l
!
"
! 2   j l��
�� 
FCct
" 1   g j��
�� 
FCDo
  o      ���� $0 contextsinfolder contextsInFolder��  
 r   q x
#
$
# n  q v
%
&
% 2   t v��
�� 
FCct
& l  q t
'����
' n   q t
(
)
( 1   r t��
�� 
ctnr
) o   q r���� 0 
thecontext 
theContext��  ��  
$ o      ���� $0 contextsinfolder contextsInFolder
 
*
+
* l  y y��������  ��  ��  
+ 
,
-
, r   y |
.
/
. m   y z��
�� 
null
/ o      ���� "0 positionoffound positionOfFound
- 
0
1
0 r   } �
2
3
2 J   } ����  
3 o      ���� 20 namesofcontextsinfolder namesOfContextsInFolder
1 
4
5
4 Y   � �
6��
7
8��
6 k   � �
9
9 
:
;
: r   � �
<
=
< n   � �
>
?
> 1   � ���
�� 
pnam
? l  � �
@����
@ n   � �
A
B
A 4   � ���
C
�� 
cobj
C o   � ����� 0 i  
B o   � ����� $0 contextsinfolder contextsInFolder��  ��  
= n      
D
E
D  ;   � �
E o   � ����� 20 namesofcontextsinfolder namesOfContextsInFolder
; 
F��
F Z  � �
G
H����
G =  � �
I
J
I l  � �
K����
K n   � �
L
M
L 4   � ���
N
�� 
cobj
N o   � ����� 0 i  
M o   � ����� 20 namesofcontextsinfolder namesOfContextsInFolder��  ��  
J o   � ����� (0 desiredcontextname desiredContextName
H r   � �
O
P
O o   � ����� 0 i  
P o      ���� "0 positionoffound positionOfFound��  ��  ��  �� 0 i  
7 m   � ����� 
8 l  � �
Q����
Q n   � �
R
S
R 1   � ���
�� 
leng
S o   � ����� $0 contextsinfolder contextsInFolder��  ��  ��  
5 
T
U
T l  � ���������  ��  ��  
U 
V��
V Z   � �
W
X��
Y
W >  � �
Z
[
Z o   � ����� "0 positionoffound positionOfFound
[ m   � ���
�� 
null
X L   � �
\
\ l  � �
]����
] n   � �
^
_
^ 4   � ���
`
�� 
cobj
` o   � ����� "0 positionoffound positionOfFound
_ o   � ����� $0 contextsinfolder contextsInFolder��  ��  ��  
Y k   � �
a
a 
b
c
b r   � �
d
e
d l  � �
f����
f n   � �
g
h
g 1   � ���
�� 
ctnr
h o   � ����� 0 
thecontext 
theContext��  ��  
e o      ���� 0 thecontainer theContainer
c 
i
j
i O   � �
k
l
k r   � �
m
n
m I  � �����
o
�� .corecrel****      � null��  
o ��
p
q
�� 
kocl
p m   � ���
�� 
FCct
q ��
r
s
�� 
insh
r l  � �
t����
t n   � �
u
v
u  ;   � �
v n   � �
w
x
w 2  � ���
�� 
FCct
x  g   � ���  ��  
s ��
y��
�� 
prdt
y K   � �
z
z ��
{��
�� 
pnam
{ o   � ����� (0 desiredcontextname desiredContextName��  ��  
n o      ���� 0 
newcontext 
newContext
l o   � ����� 0 thecontainer theContainer
j 
|��
| L   � �
}
} o   � ����� 0 
newcontext 
newContext��  ��  �
  	� m     
~
~�                                                                                  OFOC  alis    X  Macintosh HD               �0ڲH+     OOmniFocus.app                                                   ��>2        ����  	                Applications    �1�      �>Lr       O  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  	� 

�
 l     ��������  ��  ��  
� 
�
�
� l     ��������  ��  ��  
� 
�
�
� i   M P
�
�
� I      ��
����� $0 findthevariables findTheVariables
� 
���
� o      ���� 0 
theproject 
theProject��  ��  
� k    �
�
� 
�
�
� O    �
�
�
� O   �
�
�
� k   
�
�
� 
�
�
� r   
 
�
�
� n   
 
�
�
� 1    ��
�� 
FCno
� o   
 ���� 0 
theproject 
theProject
� o      ���� 0 thefullnote theFullNote
� 
�
�
� Z   !
�
�����
� =   
�
�
� o    ���� 0 thefullnote theFullNote
� m    ��
�� 
msng
� L    
�
� J    
�
� 
�
�
� J    ����  
� 
���
� J    ����  ��  ��  ��  
� 
�
�
� r   " %
�
�
� m   " #��
�� 
null
� o      ���� 0 thenote theNote
� 
�
�
� Y   & T
���
�
�
�
� Z   6 O
�
�����
� C   6 @
�
�
� n   6 :
�
�
� 4   7 :��
�
�� 
cpar
� o   8 9���� 0 i  
� o   6 7���� 0 thefullnote theFullNote
� o   : ?����  0 variablesymbol variableSymbol
� k   C K
�
� 
�
�
� r   C I
�
�
� n   C G
�
�
� 4   D G��
�
�� 
cpar
� o   E F���� 0 i  
� o   C D���� 0 thefullnote theFullNote
� o      ���� 0 thenote theNote
� 
���
�  S   J K��  ��  ��  �� 0 i  
� l  ) 0
�����
� I  ) 0��
���
�� .corecnte****       ****
� n   ) ,
�
�
� 2  * ,��
�� 
cpar
� o   ) *���� 0 thefullnote theFullNote��  ��  ��  
� m   0 1���� 
� m   1 2������
� 
�
�
� Z  U f
�
����
� =  U X
�
�
� o   U V�~�~ 0 thenote theNote
� m   V W�}
�} 
null
� L   [ b
�
� J   [ a
�
� 
�
�
� J   [ ]�|�|  
� 
��{
� J   ] _�z�z  �{  ��  �  
� 
�
�
� r   g k
�
�
� J   g i�y�y  
� o      �x�x $0 cleanedvariables cleanedVariables
� 
�
�
� r   l ~
�
�
� J   l z
�
� 
�
�
� b   l s
�
�
� m   l m
�
� �
�
�   
� o   m r�w�w  0 variablesymbol variableSymbol
� 
��v
� o   s x�u�u  0 variablesymbol variableSymbol�v  
� n     
�
�
� 1   { }�t
�t 
txdl
�  f   z {
� 
�
�
� r    �
�
�
� n    �
�
�
� 2   � ��s
�s 
citm
� o    ��r�r 0 thenote theNote
� o      �q�q 0 thevariables theVariables
� 
�
�
� l  � ��p�o�n�p  �o  �n  
� 
�
�
� Y   � �
��m
�
��l
� Z   � �
�
��k�j
� >  � �
�
�
� n   � �
�
�
� 4   � ��i
�
�i 
cobj
� o   � ��h�h 0 thevar theVar
� o   � ��g�g 0 thevariables theVariables
� m   � �
�
� �
�
�  
� r   � �
�
�
� n   � �
�
�
� 4   � ��f
�
�f 
cobj
� o   � ��e�e 0 thevar theVar
� o   � ��d�d 0 thevariables theVariables
� l     
��c�b
� n      
�
�
�  ;   � �
� o   � ��a�a $0 cleanedvariables cleanedVariables�c  �b  �k  �j  �m 0 thevar theVar
� m   � ��`�` 
� l  � �
��_�^
� n   � �
�
�
� 1   � ��]
�] 
leng
� o   � ��\�\ 0 thevariables theVariables�_  �^  �l  
� 
�
�
� l  � ��[�Z�Y�[  �Z  �Y  
�    r   � � J   � ��X�X   o      �W�W 0 optionlists optionLists  Y   ���V�U Z   ��	
�T	 F   � � l  � ��S�R E   � � n   � � 4   � ��Q
�Q 
cobj o   � ��P�P 0 i   o   � ��O�O $0 cleanedvariables cleanedVariables o   � ��N�N 40 optionliststartdelimiter optionListStartDelimiter�S  �R   l  � ��M�L E   � � n   � � 4   � ��K
�K 
cobj o   � ��J�J 0 i   o   � ��I�I $0 cleanedvariables cleanedVariables o   � ��H�H 00 optionlistenddelimiter optionListEndDelimiter�M  �L  
 k   ��  r   �
 J   �  !  b   � �"#" b   � �$%$ 1   � ��G
�G 
spac% o   � ��F�F 40 optionliststartdelimiter optionListStartDelimiter# 1   � ��E
�E 
spac! &'& b   � �()( b   � �*+* 1   � ��D
�D 
spac+ o   � ��C�C 00 optionlistenddelimiter optionListEndDelimiter) 1   � ��B
�B 
spac' ,-, b   � �./. 1   � ��A
�A 
spac/ o   � ��@�@ 40 optionliststartdelimiter optionListStartDelimiter- 010 b   � �232 1   � ��?
�? 
spac3 o   � ��>�> 00 optionlistenddelimiter optionListEndDelimiter1 454 o   � ��=�= 40 optionliststartdelimiter optionListStartDelimiter5 6�<6 o   ��;�; 00 optionlistenddelimiter optionListEndDelimiter�<   n     787 1  	�:
�: 
txdl8  f   9:9 r  ;<; n  =>= 2  �9
�9 
citm> l ?�8�7? n  @A@ 4  �6B
�6 
cobjB o  �5�5 0 i  A o  �4�4 $0 cleanedvariables cleanedVariables�8  �7  < o      �3�3 0 thesplit theSplit: CDC r  EFE l G�2�1G n  HIH 4  �0J
�0 
cobjJ m  �/�/ I o  �.�. 0 thesplit theSplit�2  �1  F l     K�-�,K n      LML 4  �+N
�+ 
cobjN o  �*�* 0 i  M o  �)�) $0 cleanedvariables cleanedVariables�-  �,  D OPO r  $QRQ n  "STS 4  "�(U
�( 
cobjU m   !�'�' T o  �&�& 0 thesplit theSplitR o      �%�% &0 newoptionlisttext newOptionListTextP VWV r  %1XYX J  %-ZZ [\[ m  %(]] �^^  ,  \ _�$_ m  (+`` �aa  ,�$  Y n     bcb 1  .0�#
�# 
txdlc  f  -.W ded r  27fgf n  25hih 2  35�"
�" 
citmi o  23�!�! &0 newoptionlisttext newOptionListTextg o      � �  0 newoptionlist newOptionListe jkj r  8;lml m  89�
� boovtruem o      �� 0 
emptyfound 
emptyFoundk non V  <�pqp Y  B�r�st�r k  O�uu vwv r  ORxyx m  OP�
� boovfalsy o      �� 0 
emptyfound 
emptyFoundw z�z Z  S�{|��{ = S[}~} n  SW� 4  TW��
� 
cobj� o  UV�� 0 j  � o  ST�� 0 newoptionlist newOptionList~ m  WZ�� ���  | k  ^��� ��� Z  ^������ = ^a��� o  ^_�� 0 j  � m  _`�� � r  dq��� n  do��� 7 eo���
� 
cobj� m  ik�� � m  ln����� o  de�� 0 newoptionlist newOptionList� o      �� 0 newoptionlist newOptionList� ��� = ty��� o  tu�� 0 j  � n  ux��� 1  vx�
� 
leng� o  uv�
�
 0 newoptionlist newOptionList� ��	� r  |���� n  |���� 7 }����
� 
cobj� m  ���� � m  ������� o  |}�� 0 newoptionlist newOptionList� o      �� 0 newoptionlist newOptionList�	  � r  ����� b  ����� l ������ n  ����� 7 �����
� 
cobj� m  ��� �  � l �������� \  ����� o  ������ 0 j  � m  ������ ��  ��  � o  ������ 0 newoptionlist newOptionList�  �  � l �������� n  ����� 7 ������
�� 
cobj� l �������� [  ����� o  ������ 0 j  � m  ������ ��  ��  � m  ��������� o  ������ 0 newoptionlist newOptionList��  ��  � o      ���� 0 newoptionlist newOptionList� ��� r  ����� m  ����
�� boovtrue� o      ���� 0 
emptyfound 
emptyFound� ����  S  ����  �  �  �  � 0 j  s m  EF���� t n  FJ��� 1  GI��
�� 
leng� o  FG���� 0 newoptionlist newOptionList�  q o  @A���� 0 
emptyfound 
emptyFoundo ���� r  ����� o  ������ 0 newoptionlist newOptionList� n      ���  ;  ��� o  ������ 0 optionlists optionLists��  �T   r  ����� J  ������  � n      ���  ;  ��� o  ������ 0 optionlists optionLists�V 0 i   m   � �����  n   � ���� 1   � ���
�� 
leng� o   � ����� $0 cleanedvariables cleanedVariables�U   ��� r  ����� J  ������  � n     ��� 1  ����
�� 
txdl�  f  ��� ���� l ����������  ��  ��  ��  
� 1    ��
�� 
FCDo
� m     ���                                                                                  OFOC  alis    X  Macintosh HD               �0ڲH+     OOmniFocus.app                                                   ��>2        ����  	                Applications    �1�      �>Lr       O  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  
� ���� L  ���� J  ���� ��� o  ������ $0 cleanedvariables cleanedVariables� ���� o  ������ 0 optionlists optionLists��  ��  
� ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� i   Q T��� I      ������� *0 findthereplacements findTheReplacements� ��� o      ���� 0 thevariables theVariables� ���� o      ���� 0 optionlists optionLists��  ��  � k    	�� ��� O    ��� O   ��� k   
�� ��� r   
 ��� J   
 ����  � o      ���� "0 thereplacements theReplacements� ��� r    ��� m    �� ��� B S e l e c t   R e p l a c e m e n t s   f o r   V a r i a b l e s� o      ���� 0 thetitle theTitle� ���� Y   �������� k     ��� ��� Z     s����� E     &��� n     $� � 4   ! $��
�� 
cobj o   " #���� 0 i    o     !���� 0 thevariables theVariables� m   $ % � 
 t o d a y� r   ) 1 l  ) .���� I  ) .������
�� .misccurdldt    ��� null��  ��  ��  ��   l     ���� n      	  ;   / 0	 o   . /���� "0 thereplacements theReplacements��  ��  � 

 C   4 : n   4 8 4   5 8��
�� 
cobj o   6 7���� 0 i   o   4 5���� 0 thevariables theVariables m   8 9 �  d a t e  r   = K b   = I b   = G b   = E b   = @ m   = > �   l W h a t   d a t e   w o u l d   y o u   l i k e   t o   u s e   f o r   t h e   d a t e   v a r i a b l e   1   > ?��
�� 
quot l  @ D!����! n   @ D"#" 4   A D��$
�� 
cobj$ o   B C���� 0 i  # o   @ A���� 0 thevariables theVariables��  ��   1   E F��
�� 
quot m   G H%% �&& V ?   Y o u   c a n   u s e   a n   a b s o l u t e   o r   r e l a t i v e   d a t e . o      ���� 0 thetext theText '(' >  N U)*) n   N R+,+ 4   O R��-
�� 
cobj- o   P Q���� 0 i  , o   N O���� 0 optionlists optionLists* J   R T����  ( .��. r   X b/0/ b   X `121 b   X ^343 m   X Y55 �66 � W h i c h   o f   t h e   f o l l o w i n g   o p t i o n s   w o u l d   y o u   l i k e   t o   a s s i g n   t o   t h e   v a r i a b l e   "4 l  Y ]7����7 n   Y ]898 4   Z ]��:
�� 
cobj: o   [ \���� 0 i  9 o   Y Z���� 0 thevariables theVariables��  ��  2 m   ^ _;; �<<  " ?0 o      ���� 0 thetext theText��  � r   e s=>= b   e q?@? b   e oABA b   e mCDC b   e hEFE m   e fGG �HH > W h a t   w o u l d   y o u   l i k e   t o   r e p l a c e  F 1   f g��
�� 
quotD l  h lI����I n   h lJKJ 4   i l��L
�� 
cobjL o   j k���� 0 i  K o   h i���� 0 thevariables theVariables��  ��  B 1   m n��
�� 
quot@ m   o pMM �NN    w i t h ?> o      ���� 0 thetext theText� O��O Z   t �PQ����P H   t {RR E   t zSTS n   t xUVU 4   u x��W
�� 
cobjW o   v w���� 0 i  V o   t u���� 0 thevariables theVariablesT m   x yXX �YY 
 t o d a yQ Q   ~ �Z[\Z Z   � �]^��_] =  � �`a` n   � �bcb 4   � ���d
�� 
cobjd o   � ����� 0 i  c o   � ����� 0 optionlists optionListsa J   � �����  ^ k   � �ee fgf r   � �hih n   � �jkj 1   � ���
�� 
ttxtk l  � �l����l I  � ���mn
�� .sysodlogaskr        TEXTm o   � ����� 0 thetext theTextn ��o��
�� 
dtxto m   � �pp �qq  ��  ��  ��  i o      ����  0 thereturninput theReturnInputg rsr Z   � �tu����t C   � �vwv n   � �xyx 4   � ���z
�� 
cobjz o   � ����� 0 i  y o   � ����� 0 thevariables theVariablesw m   � �{{ �||  d a t eu k   � �}} ~~ r   � ���� n  � ���� I   � �������� 0 englishtime englishTime� ���� o   � �����  0 thereturninput theReturnInput��  ��  �  f   � �� o      ����  0 thereturninput theReturnInput ��� r   � ���� l  � ����~� I  � ��}�|�{
�} .misccurdldt    ��� null�|  �{  �  �~  � o      �z�z  0 thecurrentdate theCurrentDate� ��� r   � ���� m   � ��y�y  � n      ��� 1   � ��x
�x 
time� o   � ��w�w  0 thecurrentdate theCurrentDate� ��v� r   � ���� [   � ���� o   � ��u�u  0 thecurrentdate theCurrentDate� o   � ��t�t  0 thereturninput theReturnInput� o      �s�s  0 thereturninput theReturnInput�v  ��  ��  s ��r� r   � ���� o   � ��q�q  0 thereturninput theReturnInput� l     ��p�o� n      ���  ;   � �� o   � ��n�n "0 thereplacements theReplacements�p  �o  �r  ��  _ r   � ���� c   � ���� l  � ���m�l� I  � ��k��
�k .gtqpchltns    @   @ ns  � l  � ���j�i� n   � ���� 4   � ��h�
�h 
cobj� o   � ��g�g 0 i  � o   � ��f�f 0 optionlists optionLists�j  �i  � �e��d
�e 
prmp� o   � ��c�c 0 thetext theText�d  �m  �l  � m   � ��b
�b 
TEXT� l     ��a�`� n      ���  ;   � �� o   � ��_�_ "0 thereplacements theReplacements�a  �`  [ R      �^��
�^ .ascrerr ****      � ****� o      �]�] 0 	errortext 	errorText� �\��[
�\ 
errn� o      �Z�Z 0 errornumber errorNumber�[  \ Z   � ����Y�X� =  � ���� o   � ��W�W 0 errornumber errorNumber� m   � ��V�V��� L   � ��� m   � ��U
�U boovfals�Y  �X  ��  ��  ��  �� 0 i  � m    �T�T � l   ��S�R� n    ��� 1    �Q
�Q 
leng� o    �P�P 0 thevariables theVariables�S  �R  ��  ��  � 1    �O
�O 
FCDo� m     ���                                                                                  OFOC  alis    X  Macintosh HD               �0ڲH+     OOmniFocus.app                                                   ��>2        ����  	                Applications    �1�      �>Lr       O  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � ��N� L  	�� o  �M�M "0 thereplacements theReplacements�N  � ��� l     �L�K�J�L  �K  �J  � ��� l     �I�H�G�I  �H  �G  � ��� i   U X��� I      �F��E�F &0 cleanexcessbreaks cleanExcessBreaks� ��D� o      �C�C 0 thetext theText�D  �E  � k     ��� ��� Z    ���B�A� =    ��� o     �@�@ 0 thetext theText� m    �?
�? 
msng� L    �� m    �>
�> 
msng�B  �A  � ��� Z   ���=�<� =   ��� o    �;�; 0 thetext theText� m    �� ���  � L    �� m    �� ���  �=  �<  � ��� Z   ,���:�9� =   #��� l   !��8�7� I   !�6��5
�6 .corecnte****       ****� n    ��� 2   �4
�4 
cpar� o    �3�3 0 thetext theText�5  �8  �7  � m   ! "�2�2 � L   & (�� o   & '�1�1 0 thetext theText�:  �9  � ��� Y   - T��0���� Z   = O���/�.� >  = C��� n   = A��� 4   > A�-�
�- 
cpar� o   ? @�,�, 0 i  � o   = >�+�+ 0 thetext theText� m   A B�� ���  � k   F K�� ��� r   F I��� o   F G�*�* 0 i  � o      �)�) 0 textends textEnds� ��(�  S   J K�(  �/  �.  �0 0 i  � l  0 7��'�&� I  0 7�%��$
�% .corecnte****       ****� n   0 3��� 2  1 3�#
�# 
cpar� o   0 1�"�" 0 thetext theText�$  �'  �&  � m   7 8�!�! � m   8 9� � ��� ��� Y   U |������ Z   e w� ��� >  e k n   e i 4   f i�
� 
cpar o   g h�� 0 j   o   e f�� 0 thetext theText m   i j �    k   n s 	
	 r   n q o   n o�� 0 j   o      �� 0 
textstarts 
textStarts
 �  S   r s�  �  �  � 0 j  � m   X Y�� � l  Y `�� I  Y `��
� .corecnte****       **** n   Y \ 2  Z \�
� 
cpar o   Y Z�� 0 thetext theText�  �  �  �  �  r   } � J   } � � o   } ~�
� 
ret �   1   � ��
� 
txdl  r   � � c   � � n   � � 7  � �� !
� 
cpar  o   � ��
�
 0 
textstarts 
textStarts! o   � ��	�	 0 textends textEnds o   � ��� 0 thetext theText m   � ��
� 
ctxt o      �� 0 
thenewtext 
theNewText "#" r   � �$%$ m   � �&& �''  % 1   � ��
� 
txdl# (�( L   � �)) o   � ��� 0 
thenewtext 
theNewText�  � *+* l     ��� �  �  �   + ,-, l     ��������  ��  ��  - ./. i   Y \010 I      �������� .0 checkforothertemplate checkForOtherTemplate��  ��  1 k    �22 343 O    �565 O   �787 k   
�99 :;: r   
 <=< l  
 >����> I  
 ��?��
�� .corecnte****       ****? l  
 @����@ 6 
 ABA 2   
 ��
�� 
FCffB l   C����C E    DED n   FGF 1    ��
�� 
pnamG  g    E m    HH �II  T e m p l a t e��  ��  ��  ��  ��  ��  ��  = o      ���� 0 thecount theCount; JKJ Z    �LM��NL l    O����O =    PQP o    ���� 0 thecount theCountQ m    ����  ��  ��  M k   # �RR STS r   # (UVU 2   # &��
�� 
FCffV o      ���� (0 templatefolderlist templateFolderListT WXW r   ) -YZY J   ) +����  Z o      ���� 00 templatefoldernamelist templateFolderNameListX [\[ X   . e]��^] k   > `__ `a` r   > Abcb m   > ?dd �ee  c o      ���� 0 nextlistitem nextListItema fgf Z  B Shi����h =  B Ijkj l  B Gl����l n   B Gmnm 1   E G��
�� 
pclsn n  B Eopo 1   C E��
�� 
ctnrp o   B C���� 0 	thefolder 	theFolder��  ��  k m   G H��
�� 
FCAri r   L Oqrq m   L Mss �tt !�  r o      ���� 0 nextlistitem nextListItem��  ��  g uvu r   T [wxw b   T Yyzy o   T U���� 0 nextlistitem nextListItemz l  U X{����{ n   U X|}| 1   V X��
�� 
pnam} o   U V���� 0 	thefolder 	theFolder��  ��  x o      ���� 0 nextlistitem nextListItemv ~��~ r   \ `� o   \ ]���� 0 nextlistitem nextListItem� l     ������ n      ���  ;   ^ _� o   ] ^���� 00 templatefoldernamelist templateFolderNameList��  ��  ��  �� 0 	thefolder 	theFolder^ o   1 2���� (0 templatefolderlist templateFolderList\ ��� r   f ���� I  f ����
�� .gtqpchltns    @   @ ns  � o   f g���� 00 templatefoldernamelist templateFolderNameList� ����
�� 
appr� m   h i�� ��� 2 C h o o s e   T e m p l a t e   F o l d e r ( s )� ����
�� 
prmp� m   l o�� ��� � N o   o b v i o u s   t e m p l a t e   f o l d e r s   w e r e   f o u n d .   P l e a s e   s e l e c t   t h e   f o l d e r ( s )   i n   w h i c h   y o u   s t o r e   t e m p l a t e s .� ����
�� 
okbt� m   r u�� ��� , S e t   a s   T e m p l a t e   F o l d e r� �����
�� 
mlsl� m   x y��
�� boovtrue��  � o      ���� 00 selectedtemplatefolder selectedTemplateFolder� ��� Z  � �������� =  � ���� o   � ����� 00 selectedtemplatefolder selectedTemplateFolder� m   � ���
�� boovfals� L   � ��� m   � ���������  ��  � ��� r   � ���� n  � ���� I   � �������� (0 selectionpositions selectionPositions� ��� o   � ����� 00 selectedtemplatefolder selectedTemplateFolder� ��� o   � ����� 00 templatefoldernamelist templateFolderNameList� ���� m   � ���
�� boovtrue��  ��  �  f   � �� o      ���� 00 templatefolderposition templateFolderPosition� ��� r   � ���� J   � �����  � o      ���� 20 existingtemplatefolders existingTemplateFolders� ���� Y   � ��������� r   � ���� n   � ���� 4   � ����
�� 
cobj� o   � ����� 0 i  � o   � ����� (0 templatefolderlist templateFolderList� l     ������ n      ���  ;   � �� o   � ����� 20 existingtemplatefolders existingTemplateFolders��  ��  �� 0 i  � m   � ����� � l  � ������� n   � ���� 1   � ���
�� 
leng� o   � ����� 00 templatefolderposition templateFolderPosition��  ��  ��  ��  ��  N r   � ���� 6 � ���� 2   � ���
�� 
FCff� l  � ������� E   � ���� n  � ���� 1   � ���
�� 
pnam�  g   � �� m   � ��� ���  T e m p l a t e��  ��  � o      ���� 20 existingtemplatefolders existingTemplateFoldersK ��� l  � ���������  ��  ��  � ��� r   � ���� J   � �����  � o      ���� *0 oldtemplateprojects oldTemplateProjects� ��� r   � ���� J   � �����  � o      ���� 40 possibletemplateprojects possibleTemplateProjects� ��� Y   �a�������� k   �\�� ��� r   � ���� l  � ������� =  � ���� n   � ���� 1   � ���
�� 
FCHi� n   � ���� 4   � ����
�� 
cobj� o   � ����� 0 i  � o   � ����� 20 existingtemplatefolders existingTemplateFolders� m   � ���
�� boovtrue��  ��  � o      ���� 20 templatefolderisdropped templateFolderIsDropped� ���� Q   �\����� Z   �S������ H   � ��� o   � ����� 20 templatefolderisdropped templateFolderIsDropped� r   �-��� b   �+��� o   � ����� 40 possibletemplateprojects possibleTemplateProjects� l  �*������ 6 �*��� 2   ���
�� 
FCfx� F  )��� F  ��� l ������ = ��� n ��� 1  ��
�� 
ctnr�  g  � l 	������ n  	��� 4  ���
�� 
cobj� o  ���� 0 i  � o  	���� 20 existingtemplatefolders existingTemplateFolders��  ��  ��  ��  � l ������ >    n  1  ��
�� 
FCPs  g   m  ��
�� FCPsFCPD��  ��  � l (��~ > ( n " 1  "�}
�} 
FCPs  g   m  #'�|
�| FCPsFCPd�  �~  ��  ��  � o      �{�{ 40 possibletemplateprojects possibleTemplateProjects��  � r  0S	
	 b  0Q o  01�z�z 40 possibletemplateprojects possibleTemplateProjects l 1P�y�x 61P 2  16�w
�w 
FCfx F  7O l 8B�v�u = 8B n 9; 1  9;�t
�t 
ctnr  g  99 l <A�s�r n  <A 4  >A�q
�q 
cobj o  ?@�p�p 0 i   o  <>�o�o 20 existingtemplatefolders existingTemplateFolders�s  �r  �v  �u   l CN�n�m > CN n DH 1  DH�l
�l 
FCPs  g  DD m  IM�k
�k FCPsFCPd�n  �m  �y  �x  
 o      �j�j 40 possibletemplateprojects possibleTemplateProjects� R      �i�h�g
�i .ascrerr ****      � ****�h  �g  ��  ��  �� 0 i  � m   � ��f�f � l  � � �e�d  n   � �!"! 1   � ��c
�c 
leng" o   � ��b�b 20 existingtemplatefolders existingTemplateFolders�e  �d  ��  � #�a# Y  b�$�`%&�_$ Z q�'(�^�]' E  q})*) l qy+�\�[+ n  qy,-, 1  uy�Z
�Z 
FCno- l qu.�Y�X. n  qu/0/ 4  ru�W1
�W 
cobj1 o  st�V�V 0 i  0 o  qr�U�U 40 possibletemplateprojects possibleTemplateProjects�Y  �X  �\  �[  * m  y|22 �33  �( r  ��454 l ��6�T�S6 n  ��787 4  ���R9
�R 
cobj9 o  ���Q�Q 0 i  8 o  ���P�P 40 possibletemplateprojects possibleTemplateProjects�T  �S  5 l     :�O�N: n      ;<;  ;  ��< o  ���M�M *0 oldtemplateprojects oldTemplateProjects�O  �N  �^  �]  �` 0 i  % m  ef�L�L & l fl=�K�J= n  fl>?> 1  gk�I
�I 
leng? o  fg�H�H 40 possibletemplateprojects possibleTemplateProjects�K  �J  �_  �a  8 1    �G
�G 
FCDo6 m     @@�                                                                                  OFOC  alis    X  Macintosh HD               �0ڲH+     OOmniFocus.app                                                   ��>2        ����  	                Applications    �1�      �>Lr       O  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  4 A�FA L  ��BB o  ���E�E *0 oldtemplateprojects oldTemplateProjects�F  / CDC l     �D�C�B�D  �C  �B  D EFE l     �A�@�?�A  �@  �?  F GHG i   ] `IJI I      �>K�=�> 20 adjustoldtemplatesyntax adjustOldTemplateSyntaxK L�<L o      �;�; *0 oldtemplateprojects oldTemplateProjects�<  �=  J O    MNM O   OPO k   
QQ RSR Y   
 �T�:UV�9T O    �WXW k    �YY Z[Z r    #\]\ m    ^^ �__  �] n     `a` 1     "�8
�8 
txdla  f     [ bcb r   $ )ded n  $ 'fgf 1   % '�7
�7 
pnamg  g   $ %e o      �6�6 0 tempname tempNamec hih r   * /jkj l  * -l�5�4l n   * -mnm 2   + -�3
�3 
citmn o   * +�2�2 0 tempname tempName�5  �4  k o      �1�1 0 tempname tempNamei opo r   0 5qrq n  0 3sts 1   1 3�0
�0 
FCnot  g   0 1r o      �/�/ 0 tempnote tempNotep uvu r   6 ;wxw l  6 9y�.�-y n   6 9z{z 2   7 9�,
�, 
citm{ o   6 7�+�+ 0 tempnote tempNote�.  �-  x o      �*�* 0 tempnote tempNotev |}| r   < E~~ o   < A�)�)  0 variablesymbol variableSymbol n     ��� 1   B D�(
�( 
txdl�  f   A B} ��� r   F K��� c   F I��� o   F G�'�' 0 tempname tempName� m   G H�&
�& 
TEXT� o      �%�% 0 tempname tempName� ��� r   L Q��� c   L O��� o   L M�$�$ 0 tempnote tempNote� m   M N�#
�# 
TEXT� o      �"�" 0 tempnote tempNote� ��� r   R W��� m   R S�� ���  �� n     ��� 1   T V�!
�! 
txdl�  f   S T� ��� r   X ]��� l  X [�� �� n   X [��� 2   Y [�
� 
citm� o   X Y�� 0 tempname tempName�   �  � o      �� 0 tempname tempName� ��� r   ^ c��� l  ^ a���� n   ^ a��� 2   _ a�
� 
citm� o   ^ _�� 0 tempnote tempNote�  �  � o      �� 0 tempnote tempNote� ��� r   d i��� m   d e�� ���  � n     ��� 1   f h�
� 
txdl�  f   e f� ��� r   j q��� c   j m��� o   j k�� 0 tempname tempName� m   k l�
� 
TEXT� n     ��� 1   n p�
� 
pnam�  g   m n� ��� r   r y��� c   r u��� o   r s�� 0 tempnote tempNote� m   s t�
� 
TEXT� n     ��� 1   v x�
� 
FCno�  g   u v� ��� Y   z ������� O   � ���� k   � ��� ��� r   � ���� m   � ��� ���  �� n     ��� 1   � ��
� 
txdl�  f   � �� ��� r   � ���� n  � ���� 1   � ��
� 
pnam�  g   � �� o      �
�
 0 tempname tempName� ��� r   � ���� l  � ���	�� n   � ���� 2   � ��
� 
citm� o   � ��� 0 tempname tempName�	  �  � o      �� 0 tempname tempName� ��� r   � ���� n  � ���� 1   � ��
� 
FCno�  g   � �� o      �� 0 tempnote tempNote� ��� r   � ���� l  � ����� n   � ���� 2   � �� 
�  
citm� o   � ����� 0 tempnote tempNote�  �  � o      ���� 0 tempnote tempNote� ��� r   � ���� o   � �����  0 variablesymbol variableSymbol� n     ��� 1   � ���
�� 
txdl�  f   � �� ��� r   � ���� c   � ���� o   � ����� 0 tempname tempName� m   � ���
�� 
TEXT� o      ���� 0 tempname tempName� ��� r   � ���� c   � ���� o   � ����� 0 tempnote tempNote� m   � ���
�� 
TEXT� o      ���� 0 tempnote tempNote� ��� r   � ���� m   � ��� ���  �� n     ��� 1   � ���
�� 
txdl�  f   � �� � � r   � � l  � ����� n   � � 2   � ���
�� 
citm o   � ����� 0 tempname tempName��  ��   o      ���� 0 tempname tempName   r   � �	 l  � �
����
 n   � � 2   � ���
�� 
citm o   � ����� 0 tempnote tempNote��  ��  	 o      ���� 0 tempnote tempNote  r   � � m   � � �   n      1   � ���
�� 
txdl  f   � �  r   � � c   � � o   � ����� 0 tempname tempName m   � ���
�� 
TEXT n      1   � ���
�� 
pnam  g   � � �� r   � � c   � � !  o   � ����� 0 tempnote tempNote! m   � ���
�� 
TEXT n     "#" 1   � ���
�� 
FCno#  g   � ���  � 4   � ���$
�� 
FCft$ o   � ����� 0 i  � 0 i  � m   } ~���� � l  ~ �%����% I  ~ ���&��
�� .corecnte****       ****& n  ~ �'(' 2   ���
�� 
FCft(  g   ~ ��  ��  ��  �  �  X n    )*) 4    ��+
�� 
cobj+ o    ���� 0 i  * o    ���� *0 oldtemplateprojects oldTemplateProjects�: 0 i  U m    ���� V l   ,����, n    -.- 1    ��
�� 
leng. o    ���� *0 oldtemplateprojects oldTemplateProjects��  ��  �9  S /��/ r   �010 m   � �22 �33  1 n     454 1   ���
�� 
txdl5  f   � ���  P 1    ��
�� 
FCDoN m     66�                                                                                  OFOC  alis    X  Macintosh HD               �0ڲH+     OOmniFocus.app                                                   ��>2        ����  	                Applications    �1�      �>Lr       O  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  H 787 l     ��������  ��  ��  8 9:9 l     ��������  ��  ��  : ;<; i   a d=>= I      ��?���� 80 checkingfordateinformation checkingForDateInformation? @A@ o      ���� 0 theitem theItemA BCB o      ���� 0 thevariables theVariablesC D��D o      ���� "0 thereplacements theReplacements��  ��  > O    �EFE O   �GHG O   
�IJI O   �KLK k   �MM NON r    PQP l   R����R n    STS 1    ��
�� 
FCnoT o    ���� 0 theitem theItem��  ��  Q o      ���� 0 thenote theNoteO UVU s    !WXW o    ���� 0 thenote theNoteX o      ���� "0 theoriginalnote theOriginalNoteV YZY l  " "��������  ��  ��  Z [\[ r   " %]^] m   " #��
�� 
null^ o      ���� 0 
dueorstart 
dueOrStart\ _`_ r   & )aba m   & '��
�� boovfalsb o      ���� 0 
askfordate 
askForDate` cdc r   * -efe m   * +��
�� boovfalsf o      ���� &0 relativetoproject relativeToProjectd ghg r   . 1iji m   . /��
�� boovfalsj o      ���� 0 datevariable dateVariableh klk l  2 2��������  ��  ��  l mnm r   2 7opo n   2 5qrq 2   3 5��
�� 
cparr o   2 3���� 0 thenote theNotep o      ���� &0 thenoteparagraphs theNoteParagraphsn sts Y   8 ju��vw��u Z   E exy����x G   E Vz{z l  E K|����| C   E K}~} n   E I� 4   F I���
�� 
cobj� o   G H���� 0 i  � o   E F���� &0 thenoteparagraphs theNoteParagraphs~ m   I J�� ���  s t a r t :��  ��  { l  N T������ C   N T��� n   N R��� 4   O R���
�� 
cobj� o   P Q���� 0 i  � o   N O���� &0 thenoteparagraphs theNoteParagraphs� m   R S�� ���  d u e :��  ��  y k   Y a�� ��� r   Y _��� n   Y ]��� 4   Z ]���
�� 
cobj� o   [ \���� 0 i  � o   Y Z���� &0 thenoteparagraphs theNoteParagraphs� o      ���� 0 thenote theNote� ����  S   ` a��  ��  ��  �� 0 i  v m   ; <���� w l  < @������ n   < @��� 1   = ?��
�� 
leng� o   < =���� &0 thenoteparagraphs theNoteParagraphs��  ��  ��  t ��� l  k k��������  ��  ��  � ��� Z   k ������� l  k n������ C   k n��� o   k l���� 0 thenote theNote� m   l m�� ���  D u e��  ��  � r   q t��� m   q r�� ���  d u e� o      ���� 0 
dueorstart 
dueOrStart� ��� l  w z������ C   w z��� o   w x���� 0 thenote theNote� m   x y�� ��� 
 S t a r t��  ��  � ���� r   } ���� m   } ~�� ��� 
 s t a r t� o      ���� 0 
dueorstart 
dueOrStart��  ��  � ��� l  � ���������  ��  ��  � ��� Z   �������� =  � ���� o   � ����� 0 
dueorstart 
dueOrStart� m   � ���
�� 
null� L   � ��� J   � ��� ���� m   � ��
� 
msng��  ��  � k   ���� ��� Z  � ����~�}� E   � ���� o   � ��|�| 0 thenote theNote� m   � ��� ���  A s k� r   � ���� m   � ��{
�{ boovtrue� o      �z�z 0 
askfordate 
askForDate�~  �}  � ��� Z  � ����y�x� E   � ���� o   � ��w�w 0 thenote theNote� m   � ��� ���  P r o j e c t� r   � ���� m   � ��v
�v boovtrue� o      �u�u &0 relativetoproject relativeToProject�y  �x  � ��� Y   � ���t���s� Z   � ����r�q� E  � ���� o   � ��p�p 0 thenote theNote� n   � ���� 4   � ��o�
�o 
cobj� o   � ��n�n 0 i  � o   � ��m�m 0 thevariables theVariables� k   � ��� ��� r   � ���� m   � ��l
�l boovtrue� o      �k�k 0 datevariable dateVariable� ��� r   � ���� o   � ��j�j 0 i  � o      �i�i ,0 datevariableposition dateVariablePosition� ��h�  S   � ��h  �r  �q  �t 0 i  � m   � ��g�g � l  � ���f�e� n   � ���� 1   � ��d
�d 
leng� o   � ��c�c 0 thevariables theVariables�f  �e  �s  � ��� l  � ��b�a�`�b  �a  �`  � ��_� Z   �����^�� o   � ��]�] 0 
askfordate 
askForDate� k   �H�� ��� r   � ���� c   � ���� l  � ���\�[� n   � ���� 1   � ��Z
�Z 
pcls� o   � ��Y�Y 0 theitem theItem�\  �[  � m   � ��X
�X 
TEXT� o      �W�W 0 classofitem classOfItem� ��� r   �   b   � b   �
 b   � b   � 	 b   � �

 b   � � b   � � b   � � m   � � � 0 W h e n   w o u l d   y o u   l i k e   t h e   o   � ��V�V 0 
dueorstart 
dueOrStart m   � � �    d a t e   o f   t h e   o   � ��U�U 0 classofitem classOfItem m   � � �   	 1   � ��T
�T 
quot l  �S�R n    1  �Q
�Q 
pnam o   �P�P 0 theitem theItem�S  �R   1  	�O
�O 
quot m  
 ��   t o   b e ?   Y o u   c a n   u s e   r e l a t i v e   ( i . e . ,   " 3 d   2 p m " ) ,   a b s o l u t e   ( i . e . ,   " J a n   1 9   1 5 : 0 0 " ) ,   o r   t h e   s h o r t   d a t e   f o r m a t   f r o m   y o u r   " L a n g u a g e   a n d   T e x t "   p r e f e r e n c e s   ( i . e . ,   " 1 3 . 0 1 . 1 9 "   o r   " 0 1 - 1 9 " )   d a t e s   i n   y o u r   i n p u t . o      �N�N 0 displaytext displayText� �M Q  H  r  %!"! n  ##$# 1  #�L
�L 
ttxt$ l %�K�J% I �I&'
�I .sysodlogaskr        TEXT& o  �H�H 0 displaytext displayText' �G(�F
�G 
dtxt( m  )) �**  1 d   1 2 a m�F  �K  �J  " o      �E�E 0 	inputdate 	inputDate R      �D+,
�D .ascrerr ****      � ****+ o      �C�C 0 	errortext 	errorText, �B-�A
�B 
errn- o      �@�@ 0 errornumber errorNumber�A    Z  -H./�?�>. = -4010 o  -0�=�= 0 errornumber errorNumber1 m  03�<�<��/ L  7D22 J  7C33 454 m  7:�;
�; 
msng5 6�:6 n :A787 I  ;A�99�8�9 $0 getridofdateinfo getRidOfDateInfo9 :;: o  ;<�7�7 "0 theoriginalnote theOriginalNote; <�6< o  <=�5�5 0 
dueorstart 
dueOrStart�6  �8  8  f  :;�:  �?  �>  �M  �^  � k  K�== >?> r  Kh@A@ J  KdBB CDC m  KNEE �FF  D u e :D GHG m  NQII �JJ  S t a r t :H KLK m  QTMM �NN  D u eL OPO m  TWQQ �RR 
 S t a r tP STS m  WZUU �VV  P r o j e c tT WXW m  Z]YY �ZZ 
 t o d a yX [�4[ m  ]`\\ �]]  a t�4  A o      �3�3 (0 possibledelimiters possibleDelimiters? ^_^ Z i~`a�2�1` o  ij�0�0 0 datevariable dateVariablea r  mzbcb c  muded l mqf�/�.f n  mqghg 4  nq�-i
�- 
cobji o  op�,�, ,0 datevariableposition dateVariablePositionh o  mn�+�+ 0 thevariables theVariables�/  �.  e m  qt�*
�* 
TEXTc n      jkj  ;  xyk o  ux�)�) (0 possibledelimiters possibleDelimiters�2  �1  _ lml r  �non o  ��(�( (0 possibledelimiters possibleDelimiterso n     pqp 1  ���'
�' 
txdlq  f  ��m rsr s  ��tut n  ��vwv 2  ���&
�& 
citmw o  ���%�% 0 thenote theNoteu o      �$�$ 0 tempdate tempDates xyx r  ��z{z m  ��|| �}}  { n     ~~ 1  ���#
�# 
txdl  f  ��y ��"� r  ����� c  ����� o  ���!�! 0 tempdate tempDate� m  ��� 
�  
TEXT� o      �� 0 	inputdate 	inputDate�"  �_  � ��� l ������  �  �  � ��� l ������  �  �  � ��� r  ����� n ����� I  ������ 0 englishtime englishTime� ��� o  ���� 0 	inputdate 	inputDate�  �  �  f  ��� o      �� "0 secondsdeferred secondsDeferred� ��� Z ������� =  ����� o  ���� "0 secondsdeferred secondsDeferred� m  ������� L  ���� J  ���� ��� m  ���
� 
msng� ��� n ����� I  ������ $0 getridofdateinfo getRidOfDateInfo� ��� o  ���� "0 theoriginalnote theOriginalNote� ��
� o  ���	�	 0 
dueorstart 
dueOrStart�
  �  �  f  ���  �  �  � ��� Z  ������� H  ���� o  ���� 0 datevariable dateVariable� Z  ������� H  ���� o  ���� &0 relativetoproject relativeToProject� k  ���� ��� r  ����� l ������ I ����� 
� .misccurdldt    ��� null�  �   �  �  � o      ���� 0 desireddate desiredDate� ��� r  ����� m  ������  � n      ��� 1  ����
�� 
time� o  ������ 0 desireddate desiredDate� ��� r  ����� [  ����� o  ������ 0 desireddate desiredDate� o  ������ "0 secondsdeferred secondsDeferred� o      ���� 0 desireddate desiredDate� ���� l ����������  ��  ��  ��  �  � k  ���� ��� Z �������� = ���� n  � ��� 1  � ��
�� 
pcls� o  ������ 0 theitem theItem� m   ��
�� 
FCpr� L  �� m  
��
�� 
msng��  ��  � ���� Z  ������� = ��� o  ���� 0 
dueorstart 
dueOrStart� m  �� ���  d u e� k  M�� ��� r  %��� n  !��� 1  !��
�� 
FCDd� n  ��� 1  ��
�� 
FCPr� o  ���� 0 theitem theItem� o      ���� 0 relativedate relativeDate� ��� Z  &A������� = &-��� o  &)���� 0 relativedate relativeDate� m  ),��
�� 
msng� L  0=�� J  0<�� ��� m  03��
�� 
msng� ���� n 3:��� I  4:������� $0 getridofdateinfo getRidOfDateInfo� ��� o  45���� "0 theoriginalnote theOriginalNote� ���� o  56���� 0 
dueorstart 
dueOrStart��  ��  �  f  34��  ��  ��  � ���� r  BM��� [  BI��� o  BE���� 0 relativedate relativeDate� o  EH���� "0 secondsdeferred secondsDeferred� o      ���� 0 desireddate desiredDate��  ��  � k  P��� ��� r  P]��� n  PY��� 1  UY��
�� 
FCDs� n  PU��� 1  QU��
�� 
FCPr� o  PQ���� 0 theitem theItem� o      ���� 0 relativedate relativeDate� ��� Z  ^������� = ^e��� o  ^a���� 0 relativedate relativeDate� m  ad��
�� 
msng� k  h{��    r  hq l hm���� I hm������
�� .misccurdldt    ��� null��  ��  ��  ��   o      ���� 0 relativedate relativeDate �� r  r{ m  rs����   n      	 1  vz��
�� 
time	 o  sv���� 0 relativedate relativeDate��  ��  ��  � 
��
 r  �� [  �� o  ������ 0 relativedate relativeDate o  ������ "0 secondsdeferred secondsDeferred o      ���� 0 desireddate desiredDate��  ��  �  � r  �� [  �� l ������ n  �� 4  ����
�� 
cobj o  ������ ,0 datevariableposition dateVariablePosition o  ������ "0 thereplacements theReplacements��  ��   o  ������ "0 secondsdeferred secondsDeferred o      ���� 0 desireddate desiredDate�  l ����������  ��  ��    Z  �p���� l ������ > �� n  �� !  1  ����
�� 
pcls! o  ������ 0 theitem theItem m  ����
�� 
FCpr��  ��   Z  �l"#$��" F  ��%&% = ��'(' o  ������ 0 
dueorstart 
dueOrStart( m  ��)) �**  D u e& l ��+����+ > ��,-, n  ��./. 1  ����
�� 
FCDd/ n  ��010 1  ����
�� 
FCPr1 o  ������ 0 theitem theItem- m  ����
�� 
msng��  ��  # Z  �"234��2 A  ��565 o  ������ 0 desireddate desiredDate6 l ��7����7 I ��������
�� .misccurdldt    ��� null��  ��  ��  ��  3 n ��898 I  ����:���� 
0 notify  : ;<; m  ��== �>> ( D u e   D a t e   i n   t h e   P a s t< ?@? b  ��ABA b  ��CDC m  ��EE �FF  C h e c k   t a s k   "D n  ��GHG 1  ����
�� 
pnamH o  ������ 0 theitem theItemB m  ��II �JJ  " .@ KLK o  ������ 0 
datenotify 
dateNotifyL M��M m  ��NN �OO  ��  ��  9  f  ��4 PQP ?  ��RSR o  ������ 0 desireddate desiredDateS n  ��TUT 1  ����
�� 
FCDdU n  ��VWV 1  ����
�� 
FCPrW o  ������ 0 theitem theItemQ X��X n �YZY I   ��[���� 
0 notify  [ \]\ m   ^^ �__ 4 D u e   D a t e   A f t e r   P r o j e c t   D u e] `a` b  bcb b  ded m  ff �gg  C h e c k   t a s k   "e n  hih 1  ��
�� 
pnami o  ���� 0 theitem theItemc m  jj �kk  " .a lml o  ���� 0 
datenotify 
dateNotifym n��n m  oo �pp  ��  ��  Z  f  � ��  ��  $ qrq l %2s����s > %2tut n  %.vwv 1  *.��
�� 
FCDdw n  %*xyx 1  &*��
�� 
FCPry o  %&���� 0 theitem theItemu m  .1��
�� 
msng��  ��  r z��z Z  5h{|����{ ?  5B}~} o  58���� 0 desireddate desiredDate~ n  8A� 1  =A��
�� 
FCDd� n  8=��� 1  9=��
�� 
FCPr� o  89���� 0 theitem theItem| n Ed��� I  Fd������� 
0 notify  � ��� m  FI�� ��� < S t a r t   D a t e   A f t e r   P r o j e c t   S t a r t� ��� b  IV��� b  IR��� m  IL�� ���  C h e c k   t a s k   "� n  LQ��� 1  MQ��
�� 
pnam� o  LM���� 0 theitem theItem� m  RU�� ���  " .� ��� o  V[���� 0 
datenotify 
dateNotify� ��� m  [^�� ���  �  ��  �  f  EF��  ��  ��  ��  ��  ��   ��� l qq�~�}�|�~  �}  �|  � ��� r  qz��� n qx��� I  rx�{��z�{ $0 getridofdateinfo getRidOfDateInfo� ��� o  rs�y�y "0 theoriginalnote theOriginalNote� ��x� o  st�w�w 0 
dueorstart 
dueOrStart�x  �z  �  f  qr� o      �v�v 0 thenote theNote� ��u� L  {��� J  {��� ��� o  {~�t�t 0 desireddate desiredDate� ��� o  ~�s�s 0 
dueorstart 
dueOrStart� ��r� o  ��q�q 0 thenote theNote�r  �u  L 1    �p
�p 
FCcnJ 4  
 �o�
�o 
FCdw� m    �n�n H 1    �m
�m 
FCDoF m     ���                                                                                  OFOC  alis    X  Macintosh HD               �0ڲH+     OOmniFocus.app                                                   ��>2        ����  	                Applications    �1�      �>Lr       O  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  < ��� l     �l�k�j�l  �k  �j  � ��� l     �i�h�g�i  �h  �g  � ��� i   e h��� I      �f��e�f 0 englishtime englishTime� ��d� o      �c�c 0 datedesired dateDesired�d  �e  � k    y�� ��� Z    ���b�a� =    ��� o     �`�` 0 datedesired dateDesired� m    �� ���  0� L    �� m    �_�_  �b  �a  � ��� l   �^�]�\�^  �]  �\  � ��� r    ��� m    �[�[  � o      �Z�Z 0 
monthfound 
monthFound� ��� r    ��� m    �Y�Y  � o      �X�X 0 weekdayfound weekdayFound� ��� l   �W���W  � Z T Solves an issue with the treatment of leading zeros for the minutes (i.e., 12:01am)   � ��� �   S o l v e s   a n   i s s u e   w i t h   t h e   t r e a t m e n t   o f   l e a d i n g   z e r o s   f o r   t h e   m i n u t e s   ( i . e . ,   1 2 : 0 1 a m )� ��� r    ��� m    �V
�V boovfals� o      �U�U &0 minuteleadingzero minuteLeadingZero� ��� l   �T�S�R�T  �S  �R  � ��� l   �Q���Q  � = 7 Figures out if the user excluded any of the components   � ��� n   F i g u r e s   o u t   i f   t h e   u s e r   e x c l u d e d   a n y   o f   t h e   c o m p o n e n t s� ��� r    ��� m    �P
�P boovfals� o      �O�O 0 timemissing timeMissing� ��� r     ��� m    �N
�N boovfals� o      �M�M 0 daysmissing daysMissing� ��� r   ! $��� m   ! "�L
�L boovfals� o      �K�K 0 weeksmissing weeksMissing� ��� l  % %�J�I�H�J  �I  �H  � ��� l  % %�G���G  � 1 + Sets up the delimiters for different items   � ��� V   S e t s   u p   t h e   d e l i m i t e r s   f o r   d i f f e r e n t   i t e m s� ��� r   % .��� J   % ,�� ��� m   % &�� ���  a m� ��� m   & '�� ���  p m� � � m   ' ( �  a   m   ( ) �  p �F m   ) * �		  :�F  � o      �E�E  0 timedelimiters timeDelimiters� 

 r   / 6 J   / 4  m   / 0 �  d a y s  m   0 1 �  d a y �D m   1 2 �  d�D   o      �C�C 0 daydelimiters dayDelimiters  r   7 > J   7 <   m   7 8!! �"" 
 w e e k s  #$# m   8 9%% �&&  w e e k$ '�B' m   9 :(( �))  w�B   o      �A�A  0 weekdelimiters weekDelimiters *+* r   ? c,-, J   ? a.. /0/ m   ? @11 �22  J a n0 343 m   @ A55 �66  F e b4 787 m   A B99 �::  M a r8 ;<; m   B E== �>>  A p r< ?@? m   E HAA �BB  M a y@ CDC m   H KEE �FF  J u nD GHG m   K NII �JJ  J u lH KLK m   N QMM �NN  A u gL OPO m   Q TQQ �RR  S e pP STS m   T WUU �VV  O c tT WXW m   W ZYY �ZZ  N o vX [�@[ m   Z ]\\ �]]  D e c�@  - o      �?�? "0 monthdelimiters monthDelimiters+ ^_^ r   d `a` J   d }bb cdc m   d gee �ff  S u nd ghg m   g jii �jj  M o nh klk m   j mmm �nn  T u el opo m   m pqq �rr  W e dp sts m   p suu �vv  T h ut wxw m   s vyy �zz  F r ix {�>{ m   v y|| �}}  S a t�>  a o      �=�= &0 weekdaydelimiters weekdayDelimiters_ ~~ r   � ���� J   � ��� ��� m   � ��� ��� 
 T o d a y� ��� m   � ��� ���  T o m o r r o w� ��<� m   � ��� ���  a t�<  � o      �;�; <0 specialrelativedaydelimiters specialRelativeDayDelimiters ��� r   � ���� J   � ��� ��� m   � ��� ���   � ��� m   � ��� ���  t h� ��� m   � ��� ���  s t� ��� m   � ��� ���  r d� ��:� m   � ��� ���  n d�:  � o      �9�9 "0 otherdelimiters otherDelimiters� ��� l  � ��8�7�6�8  �7  �6  � ��� r   � ���� m   � ��� ���  u n k n o w n� o      �5�5 0 inthe inThe� ��� r   � ���� m   � ��4�4  � o      �3�3 00 howmanynumbersinputted howManyNumbersInputted� ��� r   � ���� J   � ��2�2  � o      �1�1 0 numlist numList� ��� l  � ��0�/�.�0  �/  �.  � ��� l  � ��-���-  � !  See if they included AM/PM   � ��� 6   S e e   i f   t h e y   i n c l u d e d   A M / P M� ��� Z  � ����,�+� I   � ��*��)�* (0 isnumberidentifier isNumberIdentifier� ��� m   � ��� ���  a� ��(� o   � ��'�' 0 datedesired dateDesired�(  �)  � r   � ���� m   � ��� ���  A M� o      �&�& 0 inthe inThe�,  �+  � ��� Z  � ����%�$� I   � ��#��"�# (0 isnumberidentifier isNumberIdentifier� ��� m   � ��� ���  p� ��!� o   � �� �  0 datedesired dateDesired�!  �"  � r   � ���� m   � ��� ���  P M� o      �� 0 inthe inThe�%  �$  � ��� l  � �����  �  �  � ��� l  � �����  � [ U See if they gave an absolute date formatted in YY.MM.DD or some other similar format   � ��� �   S e e   i f   t h e y   g a v e   a n   a b s o l u t e   d a t e   f o r m a t t e d   i n   Y Y . M M . D D   o r   s o m e   o t h e r   s i m i l a r   f o r m a t� ��� r   � ���� b   � ���� b   � ���� o   � ��� <0 specialrelativedaydelimiters specialRelativeDayDelimiters� o   � ��� "0 otherdelimiters otherDelimiters� o   � ���  0 timedelimiters timeDelimiters� n     ��� 1   � ��
� 
txdl�  f   � �� ��� r   � ���� n   � ���� 2   � ��
� 
citm� o   � ��� 0 datedesired dateDesired� o      �� 0 
checkinput 
checkInput� ��� r   � ���� J   � ���  � o      �� &0 checkinputcleaned checkInputCleaned� ��� Y   �6������ Z  1����� > ��� n  ��� 4  ��
� 
cobj� o  �� 0 i  � o  �� 0 
checkinput 
checkInput� m     �  � r  - n  ( 4  !(�

�
 
cobj o  $'�	�	 0 i   o  !�� 0 
checkinput 
checkInput l     �� n      	  ;  +,	 o  (+�� &0 checkinputcleaned checkInputCleaned�  �  �  �  � 0 i  � m   � �� � l  
��
 n    1  �
� 
leng o   � �  0 
checkinput 
checkInput�  �  �  �  r  7C n  7? 4  :?��
�� 
cobj m  =>����  o  7:���� &0 checkinputcleaned checkInputCleaned o      ���� 0 thedatecheck theDateCheck  Z  D����� G  Dg G  DY l DK���� E  DK o  DG���� 0 thedatecheck theDateCheck m  GJ �    .��  ��   l NU!����! E  NU"#" o  NQ���� 0 thedatecheck theDateCheck# m  QT$$ �%%  -��  ��   l \c&����& E  \c'(' o  \_���� 0 thedatecheck theDateCheck( m  _b)) �**  /��  ��   k  j�++ ,-, r  js./. l jo0����0 I jo������
�� .misccurdldt    ��� null��  ��  ��  ��  / o      ���� 0 
todaysdate 
todaysDate- 121 r  t}343 m  tu����  4 n      565 1  x|��
�� 
time6 o  ux���� 0 
todaysdate 
todaysDate2 787 r  ~�9:9 n ~�;<; I  ���=���� 00 understandabsolutedate understandAbsoluteDate= >��> o  ����� 0 thedatecheck theDateCheck��  ��  <  f  ~: o      ���� 0 
targetdate 
targetDate8 ?@? Z ��AB����A =  ��CDC o  ������ 0 
targetdate 
targetDateD m  ��������B L  ��EE m  ����������  ��  @ FGF r  ��HIH m  ��JJ �KK  I n     LML 1  ����
�� 
txdlM  f  ��G N��N Z  ��OP��QO = ��RSR n  ��TUT 1  ����
�� 
lengU o  ������ &0 checkinputcleaned checkInputCleanedS m  ������ P L  ��VV c  ��WXW l ��Y����Y \  ��Z[Z o  ������ 0 
targetdate 
targetDate[ o  ������ 0 
todaysdate 
todaysDate��  ��  X m  ����
�� 
nmbr��  Q k  ��\\ ]^] r  ��_`_ n  ��aba 7 ����cd
�� 
cobjc m  ������ d m  ��������b o  ������ &0 checkinputcleaned checkInputCleaned` o      ���� 0 thetime theTime^ efe r  ��ghg J  ������  h o      ���� 0 numlist numListf iji l ����������  ��  ��  j klk r  ��mnm n  ��opo 1  ����
�� 
lengp o  ������ 0 thetime theTimen o      ���� &0 timestorelocation timeStoreLocationl qrq V  ��sts Q  �|uv��u k  �sww xyx l ����z{��  z K E If the minutes have a leading zero, just combine them with the hours   { �|| �   I f   t h e   m i n u t e s   h a v e   a   l e a d i n g   z e r o ,   j u s t   c o m b i n e   t h e m   w i t h   t h e   h o u r sy }��} Z  �s~���~ F  ���� l �������� =  ����� o  ������ 0 numlist numList� J  ������  ��  ��  � l �
������ C  �
��� l ������� n  ���� 4  ����
�� 
cobj� o  ���� &0 timestorelocation timeStoreLocation� o  ������ 0 thetime theTime��  ��  � m  	�� ���  0��  ��   k  ?�� ��� r  1��� c  ,��� l (������ b  (��� l ������ n  ��� 4  ���
�� 
cobj� l ������ \  ��� o  ���� &0 timestorelocation timeStoreLocation� m  ���� ��  ��  � o  ���� 0 thetime theTime��  ��  � l '������ n  '��� 4   '���
�� 
cobj� o  #&���� &0 timestorelocation timeStoreLocation� o   ���� 0 thetime theTime��  ��  ��  ��  � m  (+��
�� 
nmbr� l     ������ n      ���  ;  /0� o  ,/���� 0 numlist numList��  ��  � ��� r  25��� m  23��
�� boovtrue� o      ���� &0 minuteleadingzero minuteLeadingZero� ���� r  6?��� \  6;��� o  69���� &0 timestorelocation timeStoreLocation� m  9:���� � o      ���� &0 timestorelocation timeStoreLocation��  ��  � k  Bs�� ��� l BB������  � &   Otherwise, get the numbers only   � ��� @   O t h e r w i s e ,   g e t   t h e   n u m b e r s   o n l y� ��� r  BT��� c  BP��� l BL������ n  BL��� 4  EL���
�� 
cobj� o  HK���� &0 timestorelocation timeStoreLocation� o  BE���� 0 thetime theTime��  ��  � m  LO��
�� 
nmbr� o      ���� 0 tempnum tempNum� ��� Z Ui������� >  UZ��� o  UX���� 0 tempnum tempNum� m  XY����  � r  ]e��� o  ]`���� 0 tempnum tempNum� l     ����� n      ���  ;  cd� o  `c�� 0 numlist numList��  �  ��  ��  � ��� r  js��� \  jo��� o  jm�� &0 timestorelocation timeStoreLocation� m  mn�� � o      �� &0 timestorelocation timeStoreLocation�  ��  v R      ���
� .ascrerr ****      � ****�  �  ��  t ?  ����� o  ���� &0 timestorelocation timeStoreLocation� m  ����  r ��� l ������  �  �  � ��� r  ����� I  ������ $0 figureoutthetime figureOutTheTime� ��� o  ���� 0 numlist numList� ��� m  ���~
�~ boovfals� ��� m  ���}
�} boovtrue� ��� m  ���|
�| boovtrue� ��{� o  ���z�z &0 minuteleadingzero minuteLeadingZero�{  �  � o      �y�y 0 thetime theTime� ��� r  ����� I  ���x��w�x &0 understandthetime understandTheTime� ��� o  ���v�v 0 thetime theTime� ��� o  ���u�u 0 inthe inThe� ��t� m  ���s
�s boovfals�t  �w  � o      �r�r 0 thetime theTime� ��q� L  ���� c  ����� l ����p�o� \  ����� [  ����� o  ���n�n 0 
targetdate 
targetDate� o  ���m�m 0 thetime theTime� o  ���l�l 0 
todaysdate 
todaysDate�p  �o  � m  ���k
�k 
nmbr�q  ��  ��  ��   ��� l ���j�i�h�j  �i  �h  � ��� l ���g���g  � N H See if they gave an absolute date, a relative one, or a day of the week   � ��� �   S e e   i f   t h e y   g a v e   a n   a b s o l u t e   d a t e ,   a   r e l a t i v e   o n e ,   o r   a   d a y   o f   t h e   w e e k� ��� Y  �
��f� �e� k  �  Z  ���d�c E  �� o  ���b�b 0 datedesired dateDesired l ���a�` n  ��	
	 4  ���_
�_ 
cobj o  ���^�^ 0 i  
 o  ���]�] "0 monthdelimiters monthDelimiters�a  �`   k  ��  r  �� o  ���\�\ 0 i   o      �[�[ 0 
monthfound 
monthFound �Z  S  ���Z  �d  �c   �Y Z  ��X�W B  �� o  ���V�V 0 i   l ���U�T n  �� 1  ���S
�S 
leng o  ���R�R &0 weekdaydelimiters weekdayDelimiters�U  �T   Z  ��Q�P E  �� o  ���O�O 0 datedesired dateDesired l ���N�M n  ��  4  ���L!
�L 
cobj! o  ���K�K 0 i    o  ���J�J &0 weekdaydelimiters weekdayDelimiters�N  �M   r  ��"#" o  ���I�I 0 i  # o      �H�H 0 weekdayfound weekdayFound�Q  �P  �X  �W  �Y  �f 0 i  � m  ���G�G   l ��$�F�E$ n  ��%&% 1  ���D
�D 
leng& o  ���C�C "0 monthdelimiters monthDelimiters�F  �E  �e  � '(' l �B�A�@�B  �A  �@  ( )*) l �?+,�?  + K E Getting rid of all the bits I could imagine being around the numbers   , �-- �   G e t t i n g   r i d   o f   a l l   t h e   b i t s   I   c o u l d   i m a g i n e   b e i n g   a r o u n d   t h e   n u m b e r s* ./. r  010 l 2�>�=2 b  343 b  565 b  787 b  9:9 b  ;<; o  �<�< <0 specialrelativedaydelimiters specialRelativeDayDelimiters< o  �;�; "0 monthdelimiters monthDelimiters: o  �:�:  0 weekdelimiters weekDelimiters8 o  �9�9 0 daydelimiters dayDelimiters6 o  �8�8  0 timedelimiters timeDelimiters4 o  �7�7 "0 otherdelimiters otherDelimiters�>  �=  1 1  �6
�6 
txdl/ =>= r  &?@? n  "ABA 2  "�5
�5 
citmB o  �4�4 0 datedesired dateDesired@ o      �3�3 0 	inputlist 	inputList> CDC l ''�2EF�2  E   Resetting delimiters   F �GG *   R e s e t t i n g   d e l i m i t e r sD HIH r  '2JKJ J  ',LL M�1M m  '*NN �OO  �1  K 1  ,1�0
�0 
txdlI PQP l 33�/�.�-�/  �.  �-  Q RSR Y  3�T�,UV�+T Z  D�WX�*�)W F  DnYZY = DR[\[ n  DN]^] 4  GN�(_
�( 
cobj_ o  JM�'�' 0 i  ^ o  DG�&�& 0 	inputlist 	inputList\ m  NQ`` �aa  -Z l Ujb�%�$b E Ujcdc m  UXee �ff  1 2 3 4 5 6 7 8 9d n  Xighg 4  di�#i
�# 
cha i m  gh�"�" h n  Xdjkj 4  [d�!l
�! 
cobjl l ^cm� �m [  ^cnon o  ^a�� 0 i  o m  ab�� �   �  k o  X[�� 0 	inputlist 	inputList�%  �$  X r  q�pqp b  q�rsr n  q{tut 4  t{�v
� 
cobjv o  wz�� 0 i  u o  qt�� 0 	inputlist 	inputLists n  {�wxw 4  ~��y
� 
cobjy l ��z��z [  ��{|{ o  ���� 0 i  | m  ���� �  �  x o  {~�� 0 	inputlist 	inputListq n      }~} 4  ���
� 
cobj l ������ [  ����� o  ���� 0 i  � m  ���� �  �  ~ o  ���� 0 	inputlist 	inputList�*  �)  �, 0 i  U m  67�� V l 7?���
� n  7?��� 1  :>�	
�	 
leng� o  7:�� 0 	inputlist 	inputList�  �
  �+  S ��� l ������  �  �  � ��� l ������  � ( " Count how many numbers were given   � ��� D   C o u n t   h o w   m a n y   n u m b e r s   w e r e   g i v e n� ��� Y  ������� k  ��� ��� Z  ������ � > ����� l �������� n  ����� 4  �����
�� 
cobj� o  ������ 0 i  � o  ������ 0 	inputlist 	inputList��  ��  � m  ���� ���  � Q  ������� k  ���� ��� r  ����� c  ����� l �������� n  ����� 4  �����
�� 
cobj� o  ������ 0 i  � o  ������ 0 	inputlist 	inputList��  ��  � m  ����
�� 
long� o      ���� 0 tempitem tempItem� ���� Z ��������� = ����� n  ����� m  ����
�� 
pcls� o  ������ 0 tempitem tempItem� m  ����
�� 
long� r  ����� [  ����� o  ������ 00 howmanynumbersinputted howManyNumbersInputted� m  ������ � o      ���� 00 howmanynumbersinputted howManyNumbersInputted��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  �  �   � ���� r  ���� m  ���� ���  � o      ���� 0 tempitem tempItem��  � 0 i  � m  ������ � l �������� n  ����� 1  ����
�� 
leng� o  ������ 0 	inputlist 	inputList��  ��  �  � ��� l 		��������  ��  ��  � ��� l 		������  � R L Get the numbers of the input ��start from the back to get the minutes first   � ��� �   G e t   t h e   n u m b e r s   o f   t h e   i n p u t    � s t a r t   f r o m   t h e   b a c k   t o   g e t   t h e   m i n u t e s   f i r s t� ��� r  	��� n  	��� 1  ��
�� 
leng� o  	���� 0 	inputlist 	inputList� o      ���� &0 timestorelocation timeStoreLocation� ��� V  ���� Q  ������ k  "��� ��� l ""������  � K E If the minutes have a leading zero, just combine them with the hours   � ��� �   I f   t h e   m i n u t e s   h a v e   a   l e a d i n g   z e r o ,   j u s t   c o m b i n e   t h e m   w i t h   t h e   h o u r s� ���� Z  "������� F  "=��� l "(������ =  "(��� o  "%���� 0 numlist numList� J  %'����  ��  ��  � l +9������ C  +9��� l +5������ n  +5��� 4  .5���
�� 
cobj� o  14���� 0 i  � o  +.���� 0 	inputlist 	inputList��  ��  � m  58�� ���  0��  ��  � k  @n�� ��� r  @`��� c  @[��� l @W������ b  @W��� l @L������ n  @L��� 4  CL���
�� 
cobj� l FK������ \  FK��� o  FI���� 0 i  � m  IJ���� ��  ��  � o  @C���� 0 	inputlist 	inputList��  ��  � l LV���� n  LV��� 4  OV��
� 
cobj� o  RU�� 0 i  � o  LO�� 0 	inputlist 	inputList�  �  ��  ��  � m  WZ�
� 
nmbr� l     ���� n          ;  ^_ o  [^�� 0 numlist numList�  �  �  r  ad m  ab�
� boovtrue o      �� &0 minuteleadingzero minuteLeadingZero � r  en \  ej	
	 o  eh�� &0 timestorelocation timeStoreLocation
 m  hi��  o      �� &0 timestorelocation timeStoreLocation�  ��  � k  q�  l qq��   &   Otherwise, get the numbers only    � @   O t h e r w i s e ,   g e t   t h e   n u m b e r s   o n l y  r  q� c  q l q{�� n  q{ 4  t{�
� 
cobj o  wz�� 0 i   o  qt�� 0 	inputlist 	inputList�  �   m  {~�
� 
nmbr o      �� 0 tempnum tempNum  Z ���� >  ��  o  ���� 0 tempnum tempNum  m  ����   r  ��!"! o  ���� 0 tempnum tempNum" l     #��# n      $%$  ;  ��% o  ���� 0 numlist numList�  �  �  �   &�& r  ��'(' \  ��)*) o  ���� &0 timestorelocation timeStoreLocation* m  ���� ( o      �� &0 timestorelocation timeStoreLocation�  ��  � R      ���
� .ascrerr ****      � ****�  �  ��  � ?  +,+ o  �� &0 timestorelocation timeStoreLocation, m  ��  � -.- l ������  �  �  . /0/ l ���12�  1 I C Reverse it so the order is from biggest to smallest time increment   2 �33 �   R e v e r s e   i t   s o   t h e   o r d e r   i s   f r o m   b i g g e s t   t o   s m a l l e s t   t i m e   i n c r e m e n t0 454 r  ��676 n  ��898 1  ���
� 
rvse9 o  ���� 0 numlist numList7 o      �� 0 numlist numList5 :;: l ������  �  �  ; <=< Z  �r>?@A> F  ��BCB l ��D��D = ��EFE o  ���� 0 
monthfound 
monthFoundF m  ����  �  �  C l ��G��G = ��HIH o  ���� 0 weekdayfound weekdayFoundI m  ����  �  �  ? k  ��JJ KLK l ���MN�  M * $ If the user gave a relative date...   N �OO H   I f   t h e   u s e r   g a v e   a   r e l a t i v e   d a t e . . .L PQP O  �RSR k  �TT UVU r  ��WXW H  ��YY n ��Z[Z I  ���\�� (0 isnumberidentifier isNumberIdentifier\ ]^] m  ��__ �``  d^ a�a  g  ���  �  [  f  ��X o      �� 0 daysmissing daysMissingV bcb r  ��ded H  ��ff n ��ghg I  ���i�� (0 isnumberidentifier isNumberIdentifieri jkj m  ��ll �mm  wk n�~n  g  ���~  �  h  f  ��e o      �}�} 0 weeksmissing weeksMissingc o�|o Z �pq�{�zp =  ��rsr l ��t�y�xt \  ��uvu \  ��wxw o  ���w�w 00 howmanynumbersinputted howManyNumbersInputtedx l ��y�v�uy c  ��z{z l ��|�t�s| H  ��}} o  ���r�r 0 daysmissing daysMissing�t  �s  { m  ���q
�q 
long�v  �u  v l ��~�p�o~ c  ��� l ����n�m� H  ���� o  ���l�l 0 weeksmissing weeksMissing�n  �m  � m  ���k
�k 
long�p  �o  �y  �x  s m  ���j�j  q r  ���� m  � �i
�i boovtrue� o      �h�h 0 timemissing timeMissing�{  �z  �|  S o  ���g�g 0 datedesired dateDesiredQ ��� l �f�e�d�f  �e  �d  � ��� l �c���c  �    Figure out how many weeks   � ��� 4   F i g u r e   o u t   h o w   m a n y   w e e k s� ��� Z  !���b�� H  
�� o  	�a�a 0 weeksmissing weeksMissing� r  ��� n  ��� 4  �`�
�` 
cobj� m  �_�_ � o  �^�^ 0 numlist numList� o      �]�] 0 weeksdeferred weeksDeferred�b  � r  !��� m  �\�\  � o      �[�[ 0 weeksdeferred weeksDeferred� ��� l ""�Z�Y�X�Z  �Y  �X  � ��� l ""�W���W  �   Figure out how many days   � ��� 2   F i g u r e   o u t   h o w   m a n y   d a y s� ��� Z  "L���V�� H  "$�� o  "#�U�U 0 daysmissing daysMissing� r  '4��� I  '0�T��S�T 0 howmanydays howManyDays� ��� o  (+�R�R 0 numlist numList� ��Q� o  +,�P�P 0 weeksmissing weeksMissing�Q  �S  � o      �O�O 0 daysdeferred daysDeferred�V  � Z  7L���N�� E  7<��� o  78�M�M 0 datedesired dateDesired� m  8;�� ���  T o m o r r o w� k  ?D�� ��� l ??�L���L  � - ' Special case where they put "tomorrow"   � ��� N   S p e c i a l   c a s e   w h e r e   t h e y   p u t   " t o m o r r o w "� ��K� r  ?D��� m  ?@�J�J � o      �I�I 0 daysdeferred daysDeferred�K  �N  � k  GL�� ��� l GG�H���H  � 1 + If they exclude it entirely or put "Today"   � ��� V   I f   t h e y   e x c l u d e   i t   e n t i r e l y   o r   p u t   " T o d a y "� ��G� r  GL��� m  GH�F�F  � o      �E�E 0 daysdeferred daysDeferred�G  � ��� l MM�D�C�B�D  �C  �B  � ��� l MM�A���A  �   Figure out the time   � ��� (   F i g u r e   o u t   t h e   t i m e� ��� r  M]��� I  MY�@��?�@ $0 figureoutthetime figureOutTheTime� ��� o  NQ�>�> 0 numlist numList� ��� o  QR�=�= 0 timemissing timeMissing� ��� o  RS�<�< 0 daysmissing daysMissing� ��� o  ST�;�; 0 weeksmissing weeksMissing� ��:� o  TU�9�9 &0 minuteleadingzero minuteLeadingZero�:  �?  � o      �8�8 $0 timedeferredtemp timeDeferredTemp� ��� l ^^�7���7  � 3 - Understand the meaning of the time component   � ��� Z   U n d e r s t a n d   t h e   m e a n i n g   o f   t h e   t i m e   c o m p o n e n t� ��� r  ^l��� I  ^h�6��5�6 &0 understandthetime understandTheTime� ��� o  _b�4�4 $0 timedeferredtemp timeDeferredTemp� ��� o  bc�3�3 0 inthe inThe� ��2� o  cd�1�1 0 timemissing timeMissing�2  �5  � o      �0�0 0 timedeferred timeDeferred� ��� l mm�/�.�-�/  �.  �-  � ��� l mm�,���,  � G A Creating the time deferred based on minutes and hours calculated   � ��� �   C r e a t i n g   t h e   t i m e   d e f e r r e d   b a s e d   o n   m i n u t e s   a n d   h o u r s   c a l c u l a t e d� ��� Z  m����+�� @  mr��� o  mp�*�* 0 timedeferred timeDeferred� m  pq�)�)  � r  u���� [  u���� [  u���� o  ux�(�( 0 timedeferred timeDeferred� ]  x��� o  x{�'�' 0 daysdeferred daysDeferred� 1  {~�&
�& 
days� ]  ��� � o  ���%�% 0 weeksdeferred weeksDeferred  1  ���$
�$ 
week� o      �#�# &0 totaltimedeferred totalTimeDeferred�+  � r  �� o  ���"�" 0 timedeferred timeDeferred o      �!�! &0 totaltimedeferred totalTimeDeferred�  l ��� �    %  end of relative date-only code    � >   e n d   o f   r e l a t i v e   d a t e - o n l y   c o d e � l ������  �  �  �  @ 	
	 F  �� l ���� ?  �� o  ���� 0 weekdayfound weekdayFound m  ����  �  �   l ���� = �� o  ���� 0 
monthfound 
monthFound m  ����  �  �  
 � k  �  Z ���� A  �� n  �� 1  ���
� 
leng o  ���� 0 numlist numList m  ����  r  �� m  ���
� boovtrue o      �� 0 timemissing timeMissing�  �     l ���!"�  ! F @ Same as if the day and the week were missing on a relative date   " �## �   S a m e   a s   i f   t h e   d a y   a n d   t h e   w e e k   w e r e   m i s s i n g   o n   a   r e l a t i v e   d a t e  $%$ r  ��&'& I  ���
(�	�
 $0 figureoutthetime figureOutTheTime( )*) o  ���� 0 numlist numList* +,+ o  ���� 0 timemissing timeMissing, -.- m  ���
� boovtrue. /0/ m  ���
� boovtrue0 1�1 o  ���� &0 minuteleadingzero minuteLeadingZero�  �	  ' o      �� $0 timedeferredtemp timeDeferredTemp% 232 r  ��454 I  ���6� � &0 understandthetime understandTheTime6 787 o  ������ $0 timedeferredtemp timeDeferredTemp8 9:9 o  ������ 0 inthe inThe: ;��; o  ������ 0 timemissing timeMissing��  �   5 o      ���� 0 timedeferred timeDeferred3 <=< r  ��>?> I  ����@���� 00 daysfromtodaytoweekday daysFromTodayToWeekday@ A��A o  ������ 0 weekdayfound weekdayFound��  ��  ? o      ���� 0 daysdeferred daysDeferred= B��B Z  �CD��EC @  ��FGF o  ������ 0 timedeferred timeDeferredG m  ������  D r  �HIH [  ��JKJ ]  ��LML o  ������ 0 daysdeferred daysDeferredM 1  ����
�� 
daysK o  ������ 0 timedeferred timeDeferredI o      ���� &0 totaltimedeferred totalTimeDeferred��  E r  NON o  ���� 0 timedeferred timeDeferredO o      ���� &0 totaltimedeferred totalTimeDeferred��  �  A k  rPP QRQ l ��ST��  S + % If the user gave an absolute date...   T �UU J   I f   t h e   u s e r   g a v e   a n   a b s o l u t e   d a t e . . .R VWV Z !XY����X A  Z[Z n  \]\ 1  ��
�� 
leng] o  ���� 0 numlist numList[ m  ���� Y r  ^_^ m  ��
�� boovtrue_ o      ���� 0 timemissing timeMissing��  ��  W `a` l ""��bc��  b G A Same as if the day were there but week wasn't on a relative date   c �dd �   S a m e   a s   i f   t h e   d a y   w e r e   t h e r e   b u t   w e e k   w a s n ' t   o n   a   r e l a t i v e   d a t ea efe r  "2ghg I  ".��i���� $0 figureoutthetime figureOutTheTimei jkj o  #&���� 0 numlist numListk lml o  &'���� 0 timemissing timeMissingm non m  '(��
�� boovfalso pqp m  ()��
�� boovtrueq r��r o  )*���� &0 minuteleadingzero minuteLeadingZero��  ��  h o      ���� $0 timedeferredtemp timeDeferredTempf sts r  3Auvu I  3=��w���� &0 understandthetime understandTheTimew xyx o  47���� $0 timedeferredtemp timeDeferredTempy z{z o  78���� 0 inthe inThe{ |��| o  89���� 0 timemissing timeMissing��  ��  v o      ���� 0 timedeferred timeDeferredt }~} r  BT� I  BP������� 40 figuringtimetodesiredday figuringTimeToDesiredDay� ��� o  CD���� 0 
monthfound 
monthFound� ���� l DL������ n  DL��� 4  GL���
�� 
cobj� m  JK���� � o  DG���� 0 numlist numList��  ��  ��  ��  � o      ���� 60 timefromtodayuntildesired timeFromTodayUntilDesired~ ���� Z  Ur������ @  UZ��� o  UX���� 0 timedeferred timeDeferred� m  XY����  � r  ]h��� [  ]d��� o  ]`���� 60 timefromtodayuntildesired timeFromTodayUntilDesired� o  `c���� 0 timedeferred timeDeferred� o      ���� &0 totaltimedeferred totalTimeDeferred��  � r  kr��� o  kn���� 0 timedeferred timeDeferred� o      ���� &0 totaltimedeferred totalTimeDeferred��  = ��� l ss����  �  �  � ��� L  sw�� o  sv�� &0 totaltimedeferred totalTimeDeferred� ��� l xx����  �  �  �  � ��� l     ����  �  �  � ��� l     ����  �  �  � ��� i   i l��� I      ���� (0 isnumberidentifier isNumberIdentifier� ��� o      �� (0 possibleidentifier possibleIdentifier� ��� o      �� "0 containerstring containerString�  �  � k     ��� ��� r     ��� m     �
� boovtrue� o      �� $0 numberidentifier numberIdentifier� ��� r    ��� m    �
� boovfals� o      �� 20 identifierisincontainer identifierIsInContainer� ��� r    ��� m    	��  � o      �� 40 positionoflastidentifier positionOfLastIdentifier� ��� r    ��� n    ��� 2    �
� 
cha � o    �� "0 containerstring containerString� o      �� 0 charlist charList� ��� l   ����  �  �  � ��� Y    8������ Z    3����� =    %��� l   #���� n    #��� 4     #��
� 
cobj� o   ! "�� 0 i  � o     �� 0 charlist charList�  �  � o   # $�� (0 possibleidentifier possibleIdentifier� k   ( /�� ��� r   ( +��� m   ( )�
� boovtrue� o      �� 20 identifierisincontainer identifierIsInContainer� ��� r   , /��� o   , -�� 0 i  � o      �� 40 positionoflastidentifier positionOfLastIdentifier�  �  �  � 0 i  � m    �� � l   ���� n    ��� 1    �
� 
leng� o    �� 0 charlist charList�  �  �  � ��� l  9 9����  �  �  � ��� Z   9 ������ G   9 D��� l  9 <���� =  9 <��� o   9 :�� 40 positionoflastidentifier positionOfLastIdentifier� m   : ;��  �  �  � l  ? B���� =  ? B��� o   ? @�� 40 positionoflastidentifier positionOfLastIdentifier� m   @ A�� �  �  � r   G J��� m   G H�
� boovfals� o      �� $0 numberidentifier numberIdentifier�  � k   M ��� ��� r   M U��� n   M S��� 4   N S�~�
�~ 
cha � l  O R��}�|� \   O R��� o   O P�{�{ 40 positionoflastidentifier positionOfLastIdentifier� m   P Q�z�z �}  �|  � o   M N�y�y "0 containerstring containerString� o      �x�x "0 characterbefore characterBefore� ��� r   V Y��� m   V W�w�w  � o      �v�v 0 	numbefore 	numBefore� ��� Q   Z k���u� r   ] b��� c   ] `��� o   ] ^�t�t "0 characterbefore characterBefore� m   ^ _�s
�s 
long� o      �r�r 0 	numbefore 	numBefore� R      �q�p�o
�q .ascrerr ****      � ****�p  �o  �u  � ��n� Z  l ����m�l� F   l y� � l  l o�k�j >  l o o   l m�i�i "0 characterbefore characterBefore m   m n �   �k  �j    l  r w�h�g >  r w n   r u	
	 m   s u�f
�f 
pcls
 o   r s�e�e 0 	numbefore 	numBefore m   u v�d
�d 
long�h  �g  � r   |  m   | }�c
�c boovfals o      �b�b $0 numberidentifier numberIdentifier�m  �l  �n  � �a L   � � o   � ��`�` $0 numberidentifier numberIdentifier�a  �  l     �_�^�]�_  �^  �]    l     �\�[�Z�\  �[  �Z    i   m p I      �Y�X�Y 0 howmanydays howManyDays  o      �W�W 0 numlist numList �V o      �U�U 0 weeksmissing weeksMissing�V  �X   k       Z     �T  H     !! o     �S�S 0 weeksmissing weeksMissing r    "#" n    	$%$ 4    	�R&
�R 
cobj& m    �Q�Q % o    �P�P 0 numlist numList# o      �O�O 0 daysdeferred daysDeferred�T    r    '(' n    )*) 4    �N+
�N 
cobj+ m    �M�M * o    �L�L 0 numlist numList( o      �K�K 0 daysdeferred daysDeferred ,�J, L    -- o    �I�I 0 daysdeferred daysDeferred�J   ./. l     �H�G�F�H  �G  �F  / 010 l     �E�D�C�E  �D  �C  1 232 i   q t454 I      �B6�A�B $0 figureoutthetime figureOutTheTime6 787 o      �@�@ 0 numlist numList8 9:9 o      �?�? 0 timemissing timeMissing: ;<; o      �>�> 0 daysmissing daysMissing< =>= o      �=�= 0 weeksmissing weeksMissing> ?�<? o      �;�; &0 minuteleadingzero minuteLeadingZero�<  �A  5 k     <@@ ABA Z     9CD�:EC H     FF o     �9�9 0 timemissing timeMissingD Z    3GH�8IG o    �7�7 &0 minuteleadingzero minuteLeadingZeroH r   	 JKJ n   	 LML 4   
 �6N
�6 
cobjN m    �5�5��M o   	 
�4�4 0 numlist numListK o      �3�3 $0 timedeferredtemp timeDeferredTemp�8  I k    3OO PQP r    RSR m    TT �UU  S 1    �2
�2 
txdlQ V�1V r    3WXW c    1YZY l   /[�0�/[ c    /\]\ l   -^�.�-^ n    -_`_ 7   -�,ab
�, 
cobja m    �+�+��b l    ,c�*�)c [     ,ded [   ! 'fgf m   ! "�(�( g l  " &h�'�&h c   " &iji l  " $k�%�$k H   " $ll o   " #�#�# 0 daysmissing daysMissing�%  �$  j m   $ %�"
�" 
long�'  �&  e l 	 ' +m�!� m l  ' +n��n c   ' +opo l  ' )q��q H   ' )rr o   ' (�� 0 weeksmissing weeksMissing�  �  p m   ) *�
� 
long�  �  �!  �   �*  �)  ` o    �� 0 numlist numList�.  �-  ] m   - .�
� 
ctxt�0  �/  Z m   / 0�
� 
longX o      �� $0 timedeferredtemp timeDeferredTemp�1  �:  E r   6 9sts m   6 7��  t o      �� $0 timedeferredtemp timeDeferredTempB u�u L   : <vv o   : ;�� $0 timedeferredtemp timeDeferredTemp�  3 wxw l     ����  �  �  x yzy l     ����  �  �  z {|{ i  u x}~} I      ��
� &0 understandthetime understandTheTime ��� o      �	�	 $0 timedeferredtemp timeDeferredTemp� ��� o      �� 0 inthe inThe� ��� o      �� 0 timemissing timeMissing�  �
  ~ k     ��� ��� Z     ������ o     �� 0 timemissing timeMissing� r    ��� m    ��  � o      �� 0 timedeferred timeDeferred�  � Z   
 ������ ?   
 ��� o   
 � �  $0 timedeferredtemp timeDeferredTemp� m    ����	`� k    �� ��� l   ������  � 7 1 If the time is greater than the 24 hour clock...   � ��� b   I f   t h e   t i m e   i s   g r e a t e r   t h a n   t h e   2 4   h o u r   c l o c k . . .� ��� I   �����
�� .sysodisAaleR        TEXT� m    �� ��� � P l e a s e   t r y   a g a i n :   t h e   t i m e   y o u   e n t e r e d   w a s   n o t   a   v a l i d   t i m e   o f   d a y .��  � ��� r    ��� m    ������� o      ���� 0 timedeferred timeDeferred� ���� l   ��������  ��  ��  ��  � ��� =    !��� o    ���� $0 timedeferredtemp timeDeferredTemp� m     ����	`� ��� k   $ )�� ��� l  $ $������  � &   If the time is equal to 2400...   � ��� @   I f   t h e   t i m e   i s   e q u a l   t o   2 4 0 0 . . .� ��� r   $ '��� 1   $ %��
�� 
days� o      ���� 0 timedeferred timeDeferred� ���� l  ( (��������  ��  ��  ��  � ��� @   , /��� o   , -���� $0 timedeferredtemp timeDeferredTemp� m   - .���� d� ��� k   2 ��� ��� l  2 2������  � p j if they entered the time as a full hour:minute pair (with or without AM/PM and with or without the colon)   � ��� �   i f   t h e y   e n t e r e d   t h e   t i m e   a s   a   f u l l   h o u r : m i n u t e   p a i r   ( w i t h   o r   w i t h o u t   A M / P M   a n d   w i t h   o r   w i t h o u t   t h e   c o l o n )� ��� r   2 E��� l  2 C������ c   2 C��� l  2 A������ c   2 A��� l  2 ?������ n   2 ?��� 7  5 ?����
�� 
cha � m   9 ;������� m   < >������� l  2 5������ c   2 5��� o   2 3���� $0 timedeferredtemp timeDeferredTemp� m   3 4��
�� 
ctxt��  ��  ��  ��  � m   ? @��
�� 
ctxt��  ��  � m   A B��
�� 
long��  ��  � o      ���� "0 minutesdeferred minutesDeferred� ��� r   F Y��� l  F W������ c   F W��� l  F U������ c   F U��� l  F S������ n   F S��� 7  I S����
�� 
cha � m   M O���� � m   P R������� l  F I������ c   F I��� o   F G���� $0 timedeferredtemp timeDeferredTemp� m   G H��
�� 
ctxt��  ��  ��  ��  � m   S T��
�� 
ctxt��  ��  � m   U V��
�� 
long��  ��  � o      ���� 0 hoursdeferred hoursDeferred� ��� l  Z Z������  � Z T Figuring out the minutes and hours in the time given (minutes are last two numbers)   � ��� �   F i g u r i n g   o u t   t h e   m i n u t e s   a n d   h o u r s   i n   t h e   t i m e   g i v e n   ( m i n u t e s   a r e   l a s t   t w o   n u m b e r s )� ��� l  Z Z��������  ��  ��  � ��� Z   Z ������ =   Z ]��� o   Z [���� 0 inthe inThe� m   [ \�� ���  P M� k   ` k�� ��� l  ` `������  � 3 - For any number specifically designated as PM   � ��� Z   F o r   a n y   n u m b e r   s p e c i f i c a l l y   d e s i g n a t e d   a s   P M� ���� r   ` k��� l  ` i������ [   ` i��� ]   ` e   l  ` c��� [   ` c o   ` a�� 0 hoursdeferred hoursDeferred m   a b�� ��  �   1   c d�
� 
hour� ]   e h o   e f�� "0 minutesdeferred minutesDeferred 1   f g�
� 
min ��  ��  � o      �� 0 timedeferred timeDeferred��  �  F   n y	
	 =   n q o   n o�� 0 hoursdeferred hoursDeferred m   o p�� 
 =   t w o   t u�� 0 inthe inThe m   u v �  A M � k   | �  l  | |��     For 12:00AM exactly    � (   F o r   1 2 : 0 0 A M   e x a c t l y � r   | � ]   |  o   | }�� "0 minutesdeferred minutesDeferred 1   } ~�
� 
min  o      �� 0 timedeferred timeDeferred�  �  � k   � �  l  � �� !�    \ V For times in the AM (implicit or explicit) and explicit times in the PM (i.e., 16:00)   ! �"" �   F o r   t i m e s   i n   t h e   A M   ( i m p l i c i t   o r   e x p l i c i t )   a n d   e x p l i c i t   t i m e s   i n   t h e   P M   ( i . e . ,   1 6 : 0 0 ) #�# r   � �$%$ l  � �&��& [   � �'(' ]   � �)*) o   � ��� 0 hoursdeferred hoursDeferred* 1   � ��
� 
hour( ]   � �+,+ o   � ��� "0 minutesdeferred minutesDeferred, 1   � ��
� 
min �  �  % o      �� 0 timedeferred timeDeferred�  � -�- l  � �����  �  �  �  � ./. ?   � �010 o   � ��� $0 timedeferredtemp timeDeferredTemp1 m   � ��� / 232 k   � �44 565 l  � ��78�  7 ; 5 If they entered the time as a single number above 24   8 �99 j   I f   t h e y   e n t e r e d   t h e   t i m e   a s   a   s i n g l e   n u m b e r   a b o v e   2 46 :;: I  � ��<�
� .sysodisAaleR        TEXT< m   � �== �>> � P l e a s e   t r y   a g a i n :   t h e   t i m e   y o u   e n t e r e d   w a s   n o t   a   v a l i d   t i m e   o f   d a y .�  ; ?@? r   � �ABA m   � �����B o      �� 0 timedeferred timeDeferred@ C�C l  � �����  �  �  �  3 DED B   � �FGF o   � ��� $0 timedeferredtemp timeDeferredTempG m   � ��� E H�H k   � �II JKJ l  � ��LM�  L J D If the entered the time as a single number (with or without AM/PM)	   M �NN �   I f   t h e   e n t e r e d   t h e   t i m e   a s   a   s i n g l e   n u m b e r   ( w i t h   o r   w i t h o u t   A M / P M ) 	K O�O Z   � �PQRSP =   � �TUT o   � ��� $0 timedeferredtemp timeDeferredTempU m   � ��� Q k   � �VV WXW l  � ��YZ�  Y E ? If they entered 24 hours exactly (treat as a full extra delay)   Z �[[ ~   I f   t h e y   e n t e r e d   2 4   h o u r s   e x a c t l y   ( t r e a t   a s   a   f u l l   e x t r a   d e l a y )X \�\ r   � �]^] 1   � ��
� 
days^ o      �� 0 timedeferred timeDeferred�  R _`_ F   � �aba l  � �c��c =   � �ded o   � ��� $0 timedeferredtemp timeDeferredTempe m   � ��� �  �  b l  � �f��f >   � �ghg o   � ��� 0 inthe inTheh m   � �ii �jj  A M�  �  ` klk k   � �mm non l  � ��pq�  p . ( If they entered "12" (treat it as 12PM)   q �rr P   I f   t h e y   e n t e r e d   " 1 2 "   ( t r e a t   i t   a s   1 2 P M )o s�s r   � �tut ]   � �vwv m   � ��� w 1   � ��
� 
houru o      �� 0 timedeferred timeDeferred�  l xyx G   � �z{z l  � �|��| @   � �}~} o   � ��~�~ $0 timedeferredtemp timeDeferredTemp~ m   � ��}�} �  �  { l  � ��|�{ >   � ���� o   � ��z�z 0 inthe inThe� m   � ��� ���  P M�|  �{  y ��y� k   � ��� ��� l  � ��x���x  � G A For implicit and explicit AM entries and for implicit PM entries   � ��� �   F o r   i m p l i c i t   a n d   e x p l i c i t   A M   e n t r i e s   a n d   f o r   i m p l i c i t   P M   e n t r i e s� ��w� r   � ���� ]   � ���� o   � ��v�v $0 timedeferredtemp timeDeferredTemp� 1   � ��u
�u 
hour� o      �t�t 0 timedeferred timeDeferred�w  �y  S k   � ��� ��� l  � ��s���s  �   For explicit PM entries   � ��� 0   F o r   e x p l i c i t   P M   e n t r i e s� ��r� r   � ���� ]   � ���� l  � ���q�p� [   � ���� o   � ��o�o $0 timedeferredtemp timeDeferredTemp� m   � ��n�n �q  �p  � 1   � ��m
�m 
hour� o      �l�l 0 timedeferred timeDeferred�r  �  �  �  � ��k� L   � ��� o   � ��j�j 0 timedeferred timeDeferred�k  | ��� l     �i�h�g�i  �h  �g  � ��� l     �f�e�d�f  �e  �d  � ��� i  y |��� I      �c��b�c 40 figuringtimetodesiredday figuringTimeToDesiredDay� ��� o      �a�a 0 monthdesired monthDesired� ��`� o      �_�_ 0 
daydesired 
dayDesired�`  �b  � k     ;�� ��� r     ��� l    ��^�]� I    �\�[�Z
�\ .misccurdldt    ��� null�[  �Z  �^  �]  � o      �Y�Y 0 
todaysdate 
todaysDate� ��� r    ��� m    	�X�X  � n      ��� 1   
 �W
�W 
time� o   	 
�V�V 0 
todaysdate 
todaysDate� ��� l   �U���U  � %  Creating an intial date object   � ��� >   C r e a t i n g   a n   i n t i a l   d a t e   o b j e c t� ��� s    ��� o    �T�T 0 
todaysdate 
todaysDate� o      �S�S $0 exactdesireddate exactDesiredDate� ��� r    ��� o    �R�R 0 
daydesired 
dayDesired� l     ��Q�P� n      ��� 1    �O
�O 
day � o    �N�N $0 exactdesireddate exactDesiredDate�Q  �P  � ��� r    ��� o    �M�M 0 monthdesired monthDesired� l     ��L�K� n      ��� m    �J
�J 
mnth� o    �I�I $0 exactdesireddate exactDesiredDate�L  �K  � ��� Z    6���H�G� A    &��� o     �F�F $0 exactdesireddate exactDesiredDate� l    %��E�D� I    %�C�B�A
�C .misccurdldt    ��� null�B  �A  �E  �D  � r   ) 2��� l  ) .��@�?� [   ) .��� l  ) ,��>�=� n   ) ,��� 1   * ,�<
�< 
year� o   ) *�;�; 0 
todaysdate 
todaysDate�>  �=  � m   , -�:�: �@  �?  � l     ��9�8� n      ��� 1   / 1�7
�7 
year� o   . /�6�6 $0 exactdesireddate exactDesiredDate�9  �8  �H  �G  � ��5� L   7 ;�� l  7 :��4�3� \   7 :��� o   7 8�2�2 $0 exactdesireddate exactDesiredDate� o   8 9�1�1 0 
todaysdate 
todaysDate�4  �3  �5  � ��� l     �0�/�.�0  �/  �.  � ��� l     �-�,�+�-  �,  �+  � ��� i   } ���� I      �*��)�* 00 daysfromtodaytoweekday daysFromTodayToWeekday� ��(� o      �'�'  0 weekdaydesired weekdayDesired�(  �)  � k     0�� ��� r     ��� c     	��� l    ��&�%� n     ��� m    �$
�$ 
wkdy� l    ��#�"� I    �!� �
�! .misccurdldt    ��� null�   �  �#  �"  �&  �%  � m    �
� 
long� o      ��  0 currentweekday currentWeekday� ��� Z    -��� � =     o    ��  0 currentweekday currentWeekday o    ��  0 weekdaydesired weekdayDesired� r     m    ��   o      �� 0 daysdeferred daysDeferred�  A     o    ��  0 currentweekday currentWeekday o    ��  0 weekdaydesired weekdayDesired 	�	 r    #

 \    ! o    ��  0 weekdaydesired weekdayDesired o     ��  0 currentweekday currentWeekday o      �� 0 daysdeferred daysDeferred�    r   & - \   & + [   & ) m   & '��  o   ' (��  0 weekdaydesired weekdayDesired o   ) *��  0 currentweekday currentWeekday o      �� 0 daysdeferred daysDeferred� � L   . 0 o   . /�� 0 daysdeferred daysDeferred�  �  l     ���
�  �  �
    i   � � I      �	��	 00 understandabsolutedate understandAbsoluteDate � o      �� 0 thetext theText�  �   k    :   r     !"! l    #��# I    ���
� .misccurdldt    ��� null�  �  �  �  " o      � �  0 thedate theDate  $%$ r    &'& m    	���� ' l     (����( n      )*) 1   
 ��
�� 
day * o   	 
���� 0 thedate theDate��  ��  % +,+ r    -.- m    ���� . l     /����/ n      010 m    ��
�� 
mnth1 o    ���� 0 thedate theDate��  ��  , 232 r    454 l   6����6 \    787 o    ���� 0 thedate theDate8 ]    9:9 m    ���� : 1    ��
�� 
days��  ��  5 o      ���� 0 thedate theDate3 ;<; r    !=>= n    ?@? 1    ��
�� 
shdt@ o    ���� 0 thedate theDate> o      ���� 0 thedate theDate< ABA l  " "��������  ��  ��  B CDC r   " /EFE J   " +GG HIH m   " #JJ �KK  .I LML m   # $NN �OO  -M PQP m   $ %RR �SS  /Q TUT m   % &VV �WW  U XYX m   & 'ZZ �[[  Y \]\ m   ' (^^ �__  |] `��` m   ( )aa �bb  \��  F 1   + .��
�� 
txdlD cdc r   0 5efe n   0 3ghg 2   1 3��
�� 
citmh o   0 1���� 0 thedate theDatef o      ���� 0 thedate theDated iji r   6 Fklk K   6 Dmm ��no�� 0 theday theDayn m   7 8����  o ��pq�� 0 themonth theMonthp m   ; <����  q ��r���� 0 theyear theYearr m   ? @����  ��  l o      ���� 0 thepositions thePositionsj sts l  G G��������  ��  ��  t uvu l  G G��wx��  w S M Checks the positions of the date components based on January 31 of this year   x �yy �   C h e c k s   t h e   p o s i t i o n s   o f   t h e   d a t e   c o m p o n e n t s   b a s e d   o n   J a n u a r y   3 1   o f   t h i s   y e a rv z{z Y   G �|��}~��| O   V �� Z   _ ������ E  _ d��� m   _ b�� ���  0 1�  g   b c� r   g n��� o   g h���� 0 i  � l     ������ n     ��� o   i m���� 0 themonth theMonth� o   h i���� 0 thepositions thePositions��  ��  � ��� E  q v��� m   q t�� ���  3 1�  g   t u� ���� r   y ~��� o   y z���� 0 i  � l     ������ n     ��� o   { }���� 0 theday theDay� o   z {���� 0 thepositions thePositions��  ��  ��  � r   � ���� o   � ����� 0 i  � l     ������ n     ��� o   � ����� 0 theyear theYear� o   � ����� 0 thepositions thePositions��  ��  � n   V \��� 4   W \���
�� 
cobj� o   Z [���� 0 i  � o   V W���� 0 thedate theDate�� 0 i  } m   J K���� ~ l  K Q������ n   K Q��� 1   L P��
�� 
leng� o   K L�� 0 thedate theDate��  ��  ��  { ��� l  � �����  �  �  � ��� r   � ���� n   � ���� 2   � ��
� 
citm� o   � ��� 0 thetext theText� o      �� 0 thetext theText� ��� l  � �����  �  �  � ��� r   � ���� l  � ����� I  � ����
� .misccurdldt    ��� null�  �  �  �  � o      �� 0 
targetdate 
targetDate� ��� r   � ���� m   � ���  � n      ��� 1   � ��
� 
time� o   � ��� 0 
targetdate 
targetDate� ��� Z   �7����� F   � ���� l  � ����� >  � ���� n   � ���� 1   � ��
� 
leng� o   � ��� 0 thetext theText� m   � ��� �  �  � l  � ����� >  � ���� n   � ���� 1   � ��
� 
leng� o   � ��� 0 thetext theText� m   � ��� �  �  � k   � ��� ��� l  � �����  � ; 5 If they don't input at 2-3 numbers, return the error   � ��� j   I f   t h e y   d o n ' t   i n p u t   a t   2 - 3   n u m b e r s ,   r e t u r n   t h e   e r r o r� ��� L   � ��� m   � ������  �  � k   �7�� ��� Z   � ������ =  � ���� n   � ���� 1   � ��
� 
leng� o   � ��� 0 thetext theText� m   � ��� � k   � ��� ��� l  � �����  � %  If the input has three numbers   � ��� >   I f   t h e   i n p u t   h a s   t h r e e   n u m b e r s� ��� r   � ���� I   � ����� 0 solvetheyear solveTheYear� ��� c   � ���� l  � ����� n   � ���� 4   � ���
� 
cobj� l  � ����� n   � ���� o   � ��� 0 theyear theYear� o   � ����� 0 thepositions thePositions�  �  � o   � ����� 0 thetext theText�  �  � m   � ���
�� 
nmbr�  �  � l     ������ n      ��� 1   � ���
�� 
year� o   � ����� 0 
targetdate 
targetDate��  ��  �  �  � k   � ��� ��� l  � �������  � 7 1 If the input has two numbers (left out the year)   � ��� b   I f   t h e   i n p u t   h a s   t w o   n u m b e r s   ( l e f t   o u t   t h e   y e a r )� ���� r   � ���� I   � �������� 40 adjustpositionsfornoyear adjustPositionsForNoYear� ���� o   � ����� 0 thepositions thePositions��  ��  � o      ���� 0 thepositions thePositions��  � � � r   � c   � l  � ����� n   � � 4   � ��
� 
cobj l  � �	�~�}	 n   � �

 o   � ��|�| 0 themonth theMonth o   � ��{�{ 0 thepositions thePositions�~  �}   o   � ��z�z 0 thetext theText��  ��   m   � �y
�y 
nmbr l     �x�w n       m  �v
�v 
mnth o  �u�u 0 
targetdate 
targetDate�x  �w     r   c   l �t�s n   4  �r
�r 
cobj l 
�q�p n  
 o  �o�o 0 theday theDay o  
�n�n 0 thepositions thePositions�q  �p   o  �m�m 0 thetext theText�t  �s   m  �l
�l 
nmbr l     �k�j n       1  �i
�i 
day  o  �h�h 0 
targetdate 
targetDate�k  �j   �g Z  7 !�f�e  A "#" o  �d�d 0 
targetdate 
targetDate# l $�c�b$ I �a�`�_
�a .misccurdldt    ��� null�`  �_  �c  �b  ! r  "3%&% [  "-'(' l "+)�^�]) l "+*�\�[* n  "++,+ 1  '+�Z
�Z 
year, l "'-�Y�X- I "'�W�V�U
�W .misccurdldt    ��� null�V  �U  �Y  �X  �\  �[  �^  �]  ( m  +,�T�T & l     .�S�R. n      /0/ 1  .2�Q
�Q 
year0 o  -.�P�P 0 
targetdate 
targetDate�S  �R  �f  �e  �g  � 1�O1 L  8:22 o  89�N�N 0 
targetdate 
targetDate�O   343 l     �M�L�K�M  �L  �K  4 565 i  � �787 I      �J9�I�J 40 adjustpositionsfornoyear adjustPositionsForNoYear9 :�H: o      �G�G 0 thepositions thePositions�H  �I  8 k     J;; <=< Z     G>?@�F> =    ABA l    C�E�DC n    DED o    �C�C 0 theyear theYearE o     �B�B 0 thepositions thePositions�E  �D  B m    �A�A ? k    FF GHG r    IJI \    KLK l   M�@�?M n   NON o   	 �>�> 0 themonth theMonthO o    	�=�= 0 thepositions thePositions�@  �?  L m    �<�< J l     P�;�:P n     QRQ o    �9�9 0 themonth theMonthR o    �8�8 0 thepositions thePositions�;  �:  H S�7S r    TUT \    VWV l   X�6�5X n   YZY o    �4�4 0 theday theDayZ o    �3�3 0 thepositions thePositions�6  �5  W m    �2�2 U l     [�1�0[ n     \]\ o    �/�/ 0 theday theDay] o    �.�. 0 thepositions thePositions�1  �0  �7  @ ^_^ =   !`a` o    �-�- 0 yearposition yearPositiona m     �,�, _ b�+b Z   $ Ccd�*ec A   $ +fgf l  $ 'h�)�(h n  $ 'iji o   % '�'�' 0 theday theDayj o   $ %�&�& 0 thepositions thePositions�)  �(  g l  ' *k�%�$k n  ' *lml o   ( *�#�# 0 themonth theMonthm o   ' (�"�" 0 thepositions thePositions�%  �$  d r   . 7non \   . 3pqp l  . 1r�!� r n  . 1sts o   / 1�� 0 themonth theMontht o   . /�� 0 thepositions thePositions�!  �   q m   1 2�� o l     u��u n     vwv o   4 6�� 0 themonth theMonthw o   3 4�� 0 thepositions thePositions�  �  �*  e r   : Cxyx \   : ?z{z l  : =|��| n  : =}~} o   ; =�� 0 theday theDay~ o   : ;�� 0 thepositions thePositions�  �  { m   = >�� y l     �� n     ��� o   @ B�� 0 theday theDay� o   ? @�� 0 thepositions thePositions�  �  �+  �F  = ��� L   H J�� o   H I�� 0 thepositions thePositions�  6 ��� l     ����  �  �  � ��� i  � ���� I      �
��	�
 0 solvetheyear solveTheYear� ��� o      �� 0 num  �  �	  � Z     ����� @     ��� o     �� 0 num  � m    ���� L    �� o    �� 0 num  �  � L    �� l   ���� [    ��� m    � � �� o    ���� 0 num  �  �  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� i  � ���� I      ������� 
0 notify  � ��� o      ���� 0 thetitle theTitle� ��� o      ����  0 thedescription theDescription� ��� o      ���� 0 thetype theType� ���� o      ���� 0 theurl theURL��  ��  � k     |�� ��� O     ��� r    ��� ?    ��� l   ������ I   �����
�� .corecnte****       ****� l   ������ 6   ��� 2    ��
�� 
prcs� =   ��� 1   	 ��
�� 
bnid� m    �� ��� 0 c o m . G r o w l . G r o w l H e l p e r A p p��  ��  ��  ��  ��  � m    ����  � o      ���� 0 	isrunning 	isRunning� m     ���                                                                                  sevs  alis    �  Macintosh HD               �0ڲH+     2System Events.app                                               0��Ɖ        ����  	                CoreServices    �1�      ���       2   ,   +  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � ���� Z    |������� o    ���� 0 	isrunning 	isRunning� O    x��� k   " w�� ��� I  " ?�����
�� .registernull��� ��� null��  � ����
�� 
appl� o   $ )���� "0 applicationname applicationName� ����
�� 
anot� o   * /���� $0 allnotifications allNotifications� ����
�� 
dnot� o   0 5���� ,0 defaultnotifications defaultNotifications� �����
�� 
iapp� o   6 ;���� "0 iconapplication iconApplication��  � ���� Z   @ w������ =  @ E��� n   @ C��� 1   A C��
�� 
leng� o   @ A���� 0 theurl theURL� m   C D����  � I  H [�����
�� .notifygrnull��� ��� null��  � ����
�� 
name� o   J K���� 0 thetype theType� ����
�� 
titl� o   L M���� 0 thetitle theTitle� ����
�� 
appl� o   N S���� "0 applicationname applicationName� �����
�� 
desc� o   V W����  0 thedescription theDescription��  ��  � I  ^ w�����
�� .notifygrnull��� ��� null��  � ����
�� 
name� o   ` a���� 0 thetype theType� ����
�� 
titl� o   b c���� 0 thetitle theTitle� ����
�� 
appl� o   d i���� "0 applicationname applicationName� ����
�� 
desc� o   l m��  0 thedescription theDescription� ���
� 
curl� o   p q�� 0 theurl theURL�  ��  � m    ���                                                                                  GRRR  alis    H  Macintosh HD               �0ڲH+     O	Growl.app                                                       b8���        ����  	                Applications    �1�      ���.       O  $Macintosh HD:Applications: Growl.app   	 G r o w l . a p p    M a c i n t o s h   H D  Applications/Growl.app  / ��  ��  ��  ��  � ��� l     ����  �  �  � ��� i   � ���� I      ����  0 attachmentlist attachmentList� ��� o      �� 0 theid theID� ��� o      �� 0 theclass theClass�  �  � k     ��� ��� r     ��� J     ��  � o      �� &0 theattachmentlist theAttachmentList� ��� O    ���� k    ��� ��� Z    V����� =   ��� o    �� 0 theclass theClass� m    �� ���  t a s k� O    R   k    Q  r     m     ��
� 
OSfA
� 
nmbr o      �� ,0 numberoffileattached NumberOfFileAttached 	 r     #

 m     !��  o      �� 0 i  	 � V   $ Q k   , L  Z   , F�� >  , 4 n   , 2 1   0 2�
� 
OSin 4   , 0�
� 
OSfA o   . /�� 0 i   m   2 3�
� boovtrue r   7 B c   7 ? n   7 = 1   ; =�
� 
atfn 4   7 ;�
� 
OSfA o   9 :�� 0 i   m   = >�
� 
TEXT n       !   ;   @ A! o   ? @�� &0 theattachmentlist theAttachmentList�  �   "�" r   G L#$# [   G J%&% o   G H�� 0 i  & m   H I�� $ o      �� 0 i  �   B   ( +'(' o   ( )�� 0 i  ( o   ) *�� ,0 numberoffileattached NumberOfFileAttached�   n    )*) 1    �
� 
FCno* 5    �+�
� 
FCac+ o    �� 0 theid theID
� kfrmID  �  �  � ,�, Z   W �-.��- =  W Z/0/ o   W X�� 0 theclass theClass0 m   X Y11 �22  p r o j e c t. O   ] �343 k   g �55 676 r   g j898 m   g h:: ��
� 
OSfA
� 
nmbr9 o      �� ,0 numberoffileattached NumberOfFileAttached7 ;<; r   k n=>= m   k l�� > o      �� 0 i  < ?�? V   o �@A@ k   w �BB CDC Z   w �EF��E >  w GHG n   w }IJI 1   { }�
� 
OSinJ 4   w {�K
� 
OSfAK o   y z�� 0 i  H m   } ~�
� boovtrueF r   � �LML c   � �NON n   � �PQP 1   � ��
� 
atfnQ 4   � ��R
� 
OSfAR o   � ��� 0 i  O m   � ��
� 
TEXTM n      STS  ;   � �T o   � ��� &0 theattachmentlist theAttachmentList�  �  D U�~U r   � �VWV [   � �XYX o   � ��}�} 0 i  Y m   � ��|�| W o      �{�{ 0 i  �~  A B   s vZ[Z o   s t�z�z 0 i  [ o   t u�y�y ,0 numberoffileattached NumberOfFileAttached�  4 n   ] d\]\ 1   b d�x
�x 
FCno] 5   ] b�w^�v
�w 
FCpr^ o   _ `�u�u 0 theid theID
�v kfrmID  �  �  �  � n    	_`_ 4   	�ta
�t 
docua m    �s�s ` m    bb�                                                                                  OFOC  alis    X  Macintosh HD               �0ڲH+     OOmniFocus.app                                                   ��>2        ����  	                Applications    �1�      �>Lr       O  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � c�rc L   � �dd o   � ��q�q &0 theattachmentlist theAttachmentList�r  � efe l     �p�o�n�p  �o  �n  f ghg i   � �iji I      �mk�l�m $0 getridofdateinfo getRidOfDateInfok lml o      �k�k "0 theoriginalnote theOriginalNotem n�jn o      �i�i 0 
dueorstart 
dueOrStart�j  �l  j k     �oo pqp r     rsr l    t�h�gt n     uvu 1    �f
�f 
lengv n     wxw 2   �e
�e 
cparx o     �d�d "0 theoriginalnote theOriginalNote�h  �g  s o      �c�c 0 numparagraphs numParagraphsq yzy Y    ){�b|}�a{ Z    $~�`�_~ C    ��� n    ��� 4    �^�
�^ 
cpar� o    �]�] 0 i  � o    �\�\ "0 theoriginalnote theOriginalNote� o    �[�[ 0 
dueorstart 
dueOrStart k     �� ��� r    ��� o    �Z�Z 0 i  � o      �Y�Y 0 datespot dateSpot� ��X�  S     �X  �`  �_  �b 0 i  | m    �W�W } o    �V�V 0 numparagraphs numParagraphs�a  z ��� r   * 1��� J   * -�� ��U� o   * +�T
�T 
ret �U  � n     ��� 1   . 0�S
�S 
txdl�  f   - .� ��� Z   2 ������ =  2 5��� o   2 3�R�R 0 datespot dateSpot� m   3 4�Q�Q � Z   8 Y���P�� =  8 A��� l  8 ?��O�N� I  8 ?�M��L
�M .corecnte****       ****� n   8 ;��� 2  9 ;�K
�K 
cpar� o   8 9�J�J "0 theoriginalnote theOriginalNote�L  �O  �N  � m   ? @�I�I � r   D G��� m   D E�� ���  � o      �H�H 0 thenote theNote�P  � r   J Y��� c   J W��� l  J U��G�F� n   J U��� 7  K U�E��
�E 
cpar� m   O Q�D�D � m   R T�C�C��� l  J K��B�A� o   J K�@�@ "0 theoriginalnote theOriginalNote�B  �A  �G  �F  � m   U V�?
�? 
TEXT� o      �>�> 0 thenote theNote� ��� =  \ _��� o   \ ]�=�= 0 datespot dateSpot� o   ] ^�<�< 0 numparagraphs numParagraphs� ��;� r   b q��� c   b o��� l  b m��:�9� n   b m��� l  c m��8�7� 7  c m�6��
�6 
cpar� m   g i�5�5 � m   j l�4�4���8  �7  � o   b c�3�3 "0 theoriginalnote theOriginalNote�:  �9  � m   m n�2
�2 
TEXT� o      �1�1 0 thenote theNote�;  � r   t ���� c   t ���� l  t ���0�/� b   t ���� l  t ���.�-� n   t ���� l  u ���,�+� 7  u ��*��
�* 
cpar� m   y {�)�) � l  | ���(�'� \   | ���� o   } ~�&�& 0 datespot dateSpot� m   ~ �%�% �(  �'  �,  �+  � o   t u�$�$ "0 theoriginalnote theOriginalNote�.  �-  � l  � ���#�"� n   � ���� l  � ���!� � 7  � ����
� 
cpar� l  � ����� [   � ���� o   � ��� 0 datespot dateSpot� m   � ��� �  �  � m   � ������!  �   � o   � ��� "0 theoriginalnote theOriginalNote�#  �"  �0  �/  � m   � ��
� 
TEXT� o      �� 0 thenote theNote� ��� r   � ���� m   � ��� ���  � n     ��� 1   � ��
� 
txdl�  f   � �� ��� L   � ��� o   � ��� 0 thenote theNote�  h ��� l     ����  �  �  �       *��   $ - 6�� P U Z _�� p w��������������������������  � (���
�	��������� ������������������������������������������������������� (0 startorendoffolder startOrEndOfFolder�  0 variablesymbol variableSymbol�
 ,0 defaultfolderpointer defaultFolderPointer�	 40 optionliststartdelimiter optionListStartDelimiter� 00 optionlistenddelimiter optionListEndDelimiter� 0 firstrun firstRun� .0 specialtemplatefolder specialTemplateFolder� "0 applicationname applicationName� &0 scriptstartnotify scriptStartNotify� "0 scriptendnotify scriptEndNotify� 0 
datenotify 
dateNotify� $0 allnotifications allNotifications�  ,0 defaultnotifications defaultNotifications�� "0 iconapplication iconApplication�� &0 checkingsomething checkingSomething�� (0 selectionpositions selectionPositions�� $0 populatetemplate populateTemplate�� $0 replacevariables replaceVariables�� (0 eliminatevariables eliminateVariables�� &0 workingthecontext workingTheContext�� $0 findthevariables findTheVariables�� *0 findthereplacements findTheReplacements�� &0 cleanexcessbreaks cleanExcessBreaks�� .0 checkforothertemplate checkForOtherTemplate�� 20 adjustoldtemplatesyntax adjustOldTemplateSyntax�� 80 checkingfordateinformation checkingForDateInformation�� 0 englishtime englishTime�� (0 isnumberidentifier isNumberIdentifier�� 0 howmanydays howManyDays�� $0 figureoutthetime figureOutTheTime�� &0 understandthetime understandTheTime�� 40 figuringtimetodesiredday figuringTimeToDesiredDay�� 00 daysfromtodaytoweekday daysFromTodayToWeekday�� 00 understandabsolutedate understandAbsoluteDate�� 40 adjustpositionsfornoyear adjustPositionsForNoYear�� 0 solvetheyear solveTheYear�� 
0 notify  ��  0 attachmentlist attachmentList�� $0 getridofdateinfo getRidOfDateInfo
�� .aevtoappnull  �   � ****
� boovtrue
� 
null� �� ��     U Z _� ��.�������� (0 selectionpositions selectionPositions�� ����   �������� 0 
selectlist 
selectList�� 0 originallist originalList�� (0 multipleselections multipleSelections��   ������������������ 0 
selectlist 
selectList�� 0 originallist originalList�� (0 multipleselections multipleSelections�� 0 choicesfound choicesFound�� ,0 positionofselections positionOfSelections�� 0 j  �� 0 k  �� 0 achoicefound aChoiceFound ��������
�� 
leng
�� 
bool
�� 
cobj
�� 
null�� Ѣ rjE�OjvE�OkE�O _h���,
 	���, �&kE�OfE�O 8h���,
 ��&��/��/ ��6FOeE�O�kE�Y hO�kE�[OY��O�kE�[OY��Y [kE�O�E�O Ph���,
 ���&kE�O /h���,
 ���&��/��/ �E�Y hO�kE�[OY��O�kE�[OY��O�� ����������� $0 populatetemplate populateTemplate�� ����   �������� 0 
theproject 
theProject�� $0 cleanedvariables cleanedVariables�� "0 thereplacements theReplacements��   ����������������������� 0 
theproject 
theProject�� $0 cleanedvariables cleanedVariables�� "0 thereplacements theReplacements�� .0 delimcleanedvariables delimCleanedVariables�� 0 i  �� &0 theattachmentlist theAttachmentList�� (0 possibledatechange possibleDateChange�� 0 thefullnote theFullNote� 0 
thenewnote 
theNewNote� &0 attachmentrequest attachmentRequest� 00 theattachfilepathalias theAttachFilePathAlias� 0 theattachment theAttachment� "0 completethetask completeTheTask F����������<��c��������������������������w}������������������`f|����
� 
leng
� 
cobj
� 
FCDo
� 
ID  
� 
pcls
� 
TEXT�  0 attachmentlist attachmentList
� 
pnam� $0 replacevariables replaceVariables
� 
msng� 80 checkingfordateinformation checkingForDateInformation
� 
FCDs
� 
FCDd
� 
FCno� (0 eliminatevariables eliminateVariables
� 
bool� &0 cleanexcessbreaks cleanExcessBreaks
� 
prmp
� .sysostdfalis    ��� null
� 
ctxt
� 
kocl
� 
OSfA
� 
prdt
� 
atfn
� 
OSin� 
� .corecrel****      � null�  �  
� .corecnte****       ****
� 
FCft
� 
btns
� 
dflt
� .sysodlogaskr        TEXT
� 
bhit
� 
FCcd
� 
FCct� &0 workingthecontext workingTheContext��VjvE�O k��,Ekh b  ��/%�6F[OY��O�-*�,&�!)*�,*�,�&l+ E�O��,j )*�,��m+ 	*�,FY hO�kvE�O ch��k/�)*��m+ E�O��k/� ,��l/�  ��k/*�,FY 
��k/*�,FO��m/*a ,FY ��,l  ��l/*a ,FY h[OY��O��,j $*a ,E�O)�k+ E�O)���m+ 	*a ,FY hOfE�O*a ,a 
 *a ,a a & )eE�O)*a ,a a lva a lvm+ 	*a ,FY hO)*a ,k+ *a ,FO� P D*a a *�,%a %l a &E�O*a , *a a  a !a "�a #fa $a $ %UW X & 'hY hO*a , 5 2�[a �l (kh *a a  a !a "�a #fa $a $ %[OY��UOfE�Ojk*a )-j (kh *a )�/L)*�,*�,�&l+ E�O��,j )*�,��m+ 	*�,FY hOfE�O*a ,a *
 *a ,a +a & /a ,*�,%a -%a .a /a 0lva 1la $ 2a 3,a 4 E�Y hO� e*a 5,FY�)*a ,a 6a 7lva 8a 9lvm+ 	*a ,FOa :kvE�O eh��k/�)*��m+ E�O��k/� .��l/a ;  ��k/*�,FY 
��k/*�,FO��m/*a ,FY ��,l  ��l/*a ,FY h[OY��O��,j 8)*a ,��m+ 	*a ,FO*a <,� )*a <,��m+ =*a <,FY hY hOfE�O*a ,a >
 *a ,a ?a & )eE�O)*a ,a @a Alva Ba Clvm+ 	*a ,FY hO)*a ,k+ *a ,FO� P D*a a D*�,%a E%l a &E�O*a , *a a  a !a "�a #fa $a $ %UW X & 'hY hO*a , 5 2�[a �l (kh *a a  a !a "�a #fa $a $ %[OY��UOfE�OfE�U[OY��O�UUU� ������ $0 replacevariables replaceVariables� �	� 	  ���� 0 thetext theText� 0 thevariables theVariables� "0 thereplacements theReplacements�   ����� 0 thetext theText� 0 thevariables theVariables� "0 thereplacements theReplacements� 0 i   	���������
� 
leng
� 
cobj
� 
txdl
� 
citm
� 
pcls
� 
ldt 
� 
dstr
� 
ctxt
� 
TEXT� c��,j  �Y hO Ok��,Ekh ��/)�,FO��-E�O��/�,�  ��/�,�&)�,FY 
��/)�,FO��&E�Ojv)�,F[OY��O�� �	F�~�}
�|� (0 eliminatevariables eliminateVariables�~ �{�{   �z�z 0 thenote theNote�}  
 �y�x�w�v�y 0 thenote theNote�x 0 i  �w $0 variableposition variablePosition�v 0 
returnnote 
returnNote �u�t	S�s�r�q�p	�
�u 
cpar
�t .corecnte****       ****
�s 
ret 
�r 
txdl�q��
�p 
ctxt�| ���-j k  �Y � *��-j kih ��/b   
�E�OY h[OY��O�kv)�,FO���-j   �[�\[Zk\Z�2�&E�Y 9�k  �[�\[Zl\Zi2�&E�Y !�[�\[Zk\Z�k2�[�\[Z�k\Zi2%�&E�O�)�,FO�� �o	��n�m�l�o &0 workingthecontext workingTheContext�n �k�k   �j�i�h�j 0 
thecontext 
theContext�i 0 thevariables theVariables�h "0 thereplacements theReplacements�m   �g�f�e�d�c�b�a�`�_�^�]�g 0 
thecontext 
theContext�f 0 thevariables theVariables�e "0 thereplacements theReplacements�d 0 i  �c 0 variablefound variableFound�b (0 desiredcontextname desiredContextName�a $0 contextsinfolder contextsInFolder�` "0 positionoffound positionOfFound�_ 20 namesofcontextsinfolder namesOfContextsInFolder�^ 0 thecontainer theContainer�] 0 
newcontext 
newContext 
~�\�[�Z�Y�X�W�V�U�T�S�R�Q�P�O�N�M�L
�\ 
msng
�[ 
leng
�Z 
bool
�Y 
pnam
�X 
cobj�W $0 replacevariables replaceVariables
�V 
ctnr
�U 
pcls
�T 
docu
�S 
FCDo
�R 
FCct
�Q 
null
�P 
kocl
�O 
insh
�N 
prdt�M 
�L .corecrel****      � null�l �� ߠ�  hY �kE�OfE�O -h���,	 ��&��,��/ eE�Y hO�kE�[OY��O� �Y �)��,��m+ E�O��,�,�  *�,�-E�Y 	��,�-E�O�E�OjvE�O +k��,Ekh ��/�,�6FO��/�  �E�Y h[OY��O�� ��/EY %��,E�O� *���*�-6��la  E�UO�U� �K
��J�I�H�K $0 findthevariables findTheVariables�J �G�G   �F�F 0 
theproject 
theProject�I   �E�D�C�B�A�@�?�>�=�<�;�:�9�E 0 
theproject 
theProject�D 0 thefullnote theFullNote�C 0 thenote theNote�B 0 i  �A $0 cleanedvariables cleanedVariables�@ 0 thevariables theVariables�? 0 thevar theVar�> 0 optionlists optionLists�= 0 thesplit theSplit�< &0 newoptionlisttext newOptionListText�; 0 newoptionlist newOptionList�: 0 
emptyfound 
emptyFound�9 0 j   ��8�7�6�5�4�3
��2�1�0�/
��.�-�,]`��+
�8 
FCDo
�7 
FCno
�6 
msng
�5 
null
�4 
cpar
�3 .corecnte****       ****
�2 
txdl
�1 
citm
�0 
leng
�/ 
cobj
�. 
bool
�- 
spac�, �+���H���*�,Ҡ�,E�O��  jvjvlvY hO�E�O -��-j kih ��/b   ��/E�OY h[OY��O��  jvjvlvY hOjvE�O�b  %b  lv)�,FO��-E�O %k��,Ekh ��/� ��/�6FY h[OY��OjvE�Ok��,Ekh ��/b  	 ��/b  �& ��b  %�%�b  %�%�b  %�b  %b  b  �v)�,FO��/�-E�O��k/��/FO��l/E�Oa a lv)�,FO��-E�OeE�O �h� wk��,Ekh fE�O��/a   X�k  �[�\[Zl\Zi2E�Y 9���,  �[�\[Zk\Za 2E�Y �[�\[Zk\Z�k2�[�\[Z�k\Zi2%E�OeE�OY h[OY��[OY��O��6FY jv�6F[OY��Ojv)�,FOPUUO��lv� �*��)�(�'�* *0 findthereplacements findTheReplacements�) �&�&   �%�$�% 0 thevariables theVariables�$ 0 optionlists optionLists�(   
�#�"�!� �������# 0 thevariables theVariables�" 0 optionlists optionLists�! "0 thereplacements theReplacements�  0 thetitle theTitle� 0 i  � 0 thetext theText�  0 thereturninput theReturnInput�  0 thecurrentdate theCurrentDate� 0 	errortext 	errorText� 0 errornumber errorNumber �������%5;GMX�p��{�������
� 
FCDo
� 
leng
� 
cobj
� .misccurdldt    ��� null
� 
quot
� 
dtxt
� .sysodlogaskr        TEXT
� 
ttxt� 0 englishtime englishTime
� 
time
� 
prmp
� .gtqpchltns    @   @ ns  
� 
TEXT� 0 	errortext 	errorText �
�	�
�
 
errn�	 0 errornumber errorNumber�  ����'
�*�, �jvE�O�E�O �k��,Ekh ��/� *j �6FY A��/� ��%��/%�%�%E�Y '��/jv ��/%�%E�Y ��%��/%�%�%E�O��/� � i��/jv  I�a a l a ,E�O��/a  #)�k+ E�O*j E�Oj�a ,FO��E�Y hO��6FY ��/a �l a &�6FW X  �a   fY hY h[OY�UUO�� ������ &0 cleanexcessbreaks cleanExcessBreaks� ��   �� 0 thetext theText�   �� ��������� 0 thetext theText�  0 i  �� 0 textends textEnds�� 0 j  �� 0 
textstarts 
textStarts�� 0 
thenewtext 
theNewText ���������������&
�� 
msng
�� 
cpar
�� .corecnte****       ****
�� 
ret 
�� 
txdl
�� 
ctxt� ���  �Y hO��  �Y hO��-j k  �Y hO &��-j kih ��/� 
�E�OY h[OY��O &k��-j kh ��/� 
�E�OY h[OY��O�kv*�,FO�[�\[Z�\Z�2�&E�O�*�,FO�� ��1�������� .0 checkforothertemplate checkForOtherTemplate��  ��   �������������������������� 0 thecount theCount�� (0 templatefolderlist templateFolderList�� 00 templatefoldernamelist templateFolderNameList�� 0 	thefolder 	theFolder�� 0 nextlistitem nextListItem�� 00 selectedtemplatefolder selectedTemplateFolder�� 00 templatefolderposition templateFolderPosition�� 20 existingtemplatefolders existingTemplateFolders�� 0 i  �� *0 oldtemplateprojects oldTemplateProjects�� 40 possibletemplateprojects possibleTemplateProjects�� 20 templatefolderisdropped templateFolderIsDropped #@������H������d������s������������������������������������2
�� 
FCDo
�� 
FCff  
�� 
pnam
�� .corecnte****       ****
�� 
kocl
�� 
cobj
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
okbt
�� 
mlsl�� 
�� .gtqpchltns    @   @ ns  �� (0 selectionpositions selectionPositions
�� 
leng
�� 
FCHi
�� 
FCfx
�� 
FCPs
�� FCPsFCPD
�� FCPsFCPd��  ��  
�� 
FCno�����*�,�*�-�[�,\Z�@1j E�O�j  �*�-E�OjvE�O 6�[��l kh �E�O��,�,�  �E�Y hO���,%E�O��6F[OY��O���a a a a a ea  E�O�f  iY hO)��em+ E�OjvE�O k�a ,Ekh ��/�6F[OY��Y *�-�[�,\Za @1E�OjvE�OjvE�O �k�a ,Ekh ��/a ,e E�O a� 6�*a -�[[[�,\Z��/8\[a ,\Za 9A\[a ,\Za 9A1%E�Y %�*a -�[[�,\Z��/8\[a ,\Za 9A1%E�W X   h[OY��O -k�a ,Ekh ��/a !,a " ��/�6FY h[OY��UUO�� ��J�������� 20 adjustoldtemplatesyntax adjustOldTemplateSyntax�� ����   ���� *0 oldtemplateprojects oldTemplateProjects��   ���������� *0 oldtemplateprojects oldTemplateProjects�� 0 i  �� 0 tempname tempName�� 0 tempnote tempNote 6������^������������������2
�� 
FCDo
�� 
leng
�� 
cobj
�� 
txdl
�� 
pnam
�� 
citm
�� 
FCno
�� 
TEXT
�� 
FCft
�� .corecnte****       ****���*�, � �k��,Ekh ��/ ��)�,FO*�,E�O��-E�O*�,E�O��-E�Ob  )�,FO��&E�O��&E�O�)�,FO��-E�O��-E�O�)�,FO��&*�,FO��&*�,FO yk*�-j kh *�/ _�)�,FO*�,E�O��-E�O*�,E�O��-E�Ob  )�,FO��&E�O��&E�O�)�,FO��-E�O��-E�Oa )�,FO��&*�,FO��&*�,FU[OY��U[OY�Oa )�,FUU� ��>���� !���� 80 checkingfordateinformation checkingForDateInformation�� ��"�� "  �������� 0 theitem theItem�� 0 thevariables theVariables�� "0 thereplacements theReplacements��    ����������������������������������������� 0 theitem theItem�� 0 thevariables theVariables�� "0 thereplacements theReplacements�� 0 thenote theNote�� "0 theoriginalnote theOriginalNote�� 0 
dueorstart 
dueOrStart�� 0 
askfordate 
askForDate�� &0 relativetoproject relativeToProject�� 0 datevariable dateVariable�� &0 thenoteparagraphs theNoteParagraphs�� 0 i  �� ,0 datevariableposition dateVariablePosition�� 0 classofitem classOfItem�� 0 displaytext displayText�� 0 	inputdate 	inputDate�� 0 	errortext 	errorText�� 0 errornumber errorNumber� (0 possibledelimiters possibleDelimiters� 0 tempdate tempDate� "0 secondsdeferred secondsDeferred� 0 desireddate desiredDate� 0 relativedate relativeDate! E������������������������)���#��EIMQUY\���|�������~�})=EIN�|�{^fjo����
� 
FCDo
� 
FCdw
� 
FCcn
� 
FCno
� 
null
� 
cpar
� 
leng
� 
cobj
� 
bool
� 
msng
� 
pcls
� 
TEXT
� 
quot
� 
pnam
� 
dtxt
� .sysodlogaskr        TEXT
� 
ttxt� 0 	errortext 	errorText# �z�y�x
�z 
errn�y 0 errornumber errorNumber�x  ���� $0 getridofdateinfo getRidOfDateInfo� 
� 
txdl
� 
citm� 0 englishtime englishTime
� .misccurdldt    ��� null
� 
time
� 
FCpr
� 
FCPr
�~ 
FCDd
�} 
FCDs�| �{ 
0 notify  �����*�,}*�k/u*�,n��,E�O�EQ�O�E�OfE�OfE�OfE�O��-E�O 1k��,Ekh 
��/�
 
��/��& ��/E�OY h[OY��O�� �E�Y �� �E�Y hO��  a kvY�a  eE�Y hO�a  eE�Y hO 'k��,Ekh 
���/ eE�O�E�OY h[OY��O� l�a ,a &E�Oa �%a %�%a %_ %�a ,%_ %a %E�O �a a l a ,E�W "X   ] a !  a )��l+ "lvY hY ^a #a $a %a &a 'a (a )a *vE^ O� ��/a &] 6FY hO] )a +,FO�a ,-EQ^ Oa -)a +,FO] a &E�O)�k+ .E^ O] i  a )��l+ "lvY hO� �� &*j /E^ Oj] a 0,FO] ] E^ OPY ��a ,a 1  	a Y hO�a 2  :�a 3,a 4,E^ O] a   a )��l+ "lvY hO] ] E^ Y =�a 3,a 5,E^ O] a   *j /E^ Oj] a 0,FY hO] ] E^ Y ��/] E^ O�a ,a 1 ʥa 6 	 �a 3,a 4,a �& f] *j / $)a 7a 8�a ,%a 9%b  
a :a ;+ <Y 5] �a 3,a 4, $)a =a >�a ,%a ?%b  
a @a ;+ <Y hY I�a 3,a 4,a  8] �a 3,a 4, $)a Aa B�a ,%a C%b  
a Da ;+ <Y hY hY hO)��l+ "E�O] ��mvUUUU� �w��v�u$%�t�w 0 englishtime englishTime�v �s&�s &  �r�r 0 datedesired dateDesired�u  $ "�q�p�o�n�m�l�k�j�i�h�g�f�e�d�c�b�a�`�_�^�]�\�[�Z�Y�X�W�V�U�T�S�R�Q�P�q 0 datedesired dateDesired�p 0 
monthfound 
monthFound�o 0 weekdayfound weekdayFound�n &0 minuteleadingzero minuteLeadingZero�m 0 timemissing timeMissing�l 0 daysmissing daysMissing�k 0 weeksmissing weeksMissing�j  0 timedelimiters timeDelimiters�i 0 daydelimiters dayDelimiters�h  0 weekdelimiters weekDelimiters�g "0 monthdelimiters monthDelimiters�f &0 weekdaydelimiters weekdayDelimiters�e <0 specialrelativedaydelimiters specialRelativeDayDelimiters�d "0 otherdelimiters otherDelimiters�c 0 inthe inThe�b 00 howmanynumbersinputted howManyNumbersInputted�a 0 numlist numList�` 0 
checkinput 
checkInput�_ &0 checkinputcleaned checkInputCleaned�^ 0 i  �] 0 thedatecheck theDateCheck�\ 0 
todaysdate 
todaysDate�[ 0 
targetdate 
targetDate�Z 0 thetime theTime�Y &0 timestorelocation timeStoreLocation�X 0 tempnum tempNum�W 0 	inputlist 	inputList�V 0 tempitem tempItem�U 0 weeksdeferred weeksDeferred�T 0 daysdeferred daysDeferred�S $0 timedeferredtemp timeDeferredTemp�R 0 timedeferred timeDeferred�Q &0 totaltimedeferred totalTimeDeferred�P 60 timefromtodayuntildesired timeFromTodayUntilDesired% U����O!%(159=AEIMQUY\�Neimquy|�M�����������L����K�J�I�H $�G)�F�E�DJ�C��B�A�@�?N`e�>��=�<���;_l�:��9�8�7�6�O �N �M �L (0 isnumberidentifier isNumberIdentifier
�K 
txdl
�J 
citm
�I 
leng
�H 
cobj
�G 
bool
�F .misccurdldt    ��� null
�E 
time�D 00 understandabsolutedate understandAbsoluteDate
�C 
nmbr�B  �A  �@ $0 figureoutthetime figureOutTheTime�? &0 understandthetime understandTheTime
�> 
cha 
�= 
long
�< 
pcls
�; 
rvse�: 0 howmanydays howManyDays
�9 
days
�8 
week�7 00 daysfromtodaytoweekday daysFromTodayToWeekday�6 40 figuringtimetodesiredday figuringTimeToDesiredDay�tz��  jY hOjE�OjE�OfE�OfE�OfE�OfE�O������vE�O���mvE�O���mvE�O���a a a a a a a a a a vE�Oa a a a a a a  a !vE�Oa "a #a $mvE�Oa %a &a 'a (a )�vE�Oa *E�OjE�OjvE^ O*a +�l+ , 
a -E�Y hO*a .�l+ , 
a /E�Y hO��%�%)a 0,FO�a 1-E^ OjvE^ O 9k] a 2,Ekh ] a 3] /a 4 ] a 3] /] 6FY h[OY��O] a 3k/E^ O] a 5
 ] a 6a 7&
 ] a 8a 7&M*j 9E^ Oj] a :,FO)] k+ ;E^ O] i  iY hOa <)a 0,FO] a 2,k  ] ] a =&Y �] [a 3\[Zl\Zi2E^ OjvE^ O] a 2,E^ O �h] j �] jv 	 ] a 3] /a >a 7& 3] a 3] k/] a 3] /%a =&] 6FOeE�O] lE^ Y 3] a 3] /a =&E^ O] j ] ] 6FY hO] kE^ W X ? @h[OY�kO*] fee��+ AE^ O*] �fm+ BE^ O] ] ] a =&Y hO Rk�a 2,Ekh ��a 3] / ] E�OY hO] �a 2, ��a 3] / 
] E�Y hY h[OY��O��%�%�%�%�%*a 0,FO�a 1-E^ Oa Ckv*a 0,FO jk] a 2,Ekh ] a 3] /a D 	 a E] a 3] k/a Fk/a 7& )] a 3] /] a 3] k/%] a 3] k/FY h[OY��O hk] a 2,Ekh ] a 3] /a G ; /] a 3] /a H&E^ O] a I,a H  
�kE�Y hW X ? @hY hOa JE^ [OY��O] a 2,E^ O �h] j �] jv 	 ] a 3] /a Ka 7& 3] a 3] k/] a 3] /%a =&] 6FOeE�O] lE^ Y 3] a 3] /a =&E^ O] j ] ] 6FY hO] kE^ W X ? @h[OY�kO] a L,E^ O�j 	 	�j a 7& Р 7)a M*l+ ,E�O)a N*l+ ,E�O��a H&�a H&j  eE�Y hUO� ] a 3k/E^ Y jE^ O� *] �l+ OE^ Y �a P 
kE^ Y jE^ O*] �����+ AE^ O*] ��m+ BE^ O] j ] ] _ Q ] _ R E^  Y 	] E^  OPY ٢j	 	�j a 7& e] a 2,k eE�Y hO*] �ee��+ AE^ O*] ��m+ BE^ O*�k+ SE^ O] j ] _ Q ] E^  Y 	] E^  Y f] a 2,l eE�Y hO*] �fe��+ AE^ O*] ��m+ BE^ O*�] a 3k/l+ TE^ !O] j ] !] E^  Y 	] E^  O]  OP� �5��4�3'(�2�5 (0 isnumberidentifier isNumberIdentifier�4 �1)�1 )  �0�/�0 (0 possibleidentifier possibleIdentifier�/ "0 containerstring containerString�3  ' 	�.�-�,�+�*�)�(�'�&�. (0 possibleidentifier possibleIdentifier�- "0 containerstring containerString�, $0 numberidentifier numberIdentifier�+ 20 identifierisincontainer identifierIsInContainer�* 40 positionoflastidentifier positionOfLastIdentifier�) 0 charlist charList�( 0 i  �' "0 characterbefore characterBefore�& 0 	numbefore 	numBefore( 	�%�$�#�"�!� ��
�% 
cha 
�$ 
leng
�# 
cobj
�" 
bool
�! 
long�   �  
� 
pcls�2 �eE�OfE�OjE�O��-E�O %k��,Ekh ��/�  eE�O�E�Y h[OY��O�j 
 �k �& fE�Y 8��k/E�OjE�O 
��&E�W X  hO��	 	��,��& fE�Y hO�� ���*+�� 0 howmanydays howManyDays� �,� ,  ��� 0 numlist numList� 0 weeksmissing weeksMissing�  * ���� 0 numlist numList� 0 weeksmissing weeksMissing� 0 daysdeferred daysDeferred+ �
� 
cobj� � ��l/E�Y ��k/E�O�� �5��-.�� $0 figureoutthetime figureOutTheTime� �/� /  ����
�	� 0 numlist numList� 0 timemissing timeMissing� 0 daysmissing daysMissing�
 0 weeksmissing weeksMissing�	 &0 minuteleadingzero minuteLeadingZero�  - ������� 0 numlist numList� 0 timemissing timeMissing� 0 daysmissing daysMissing� 0 weeksmissing weeksMissing� &0 minuteleadingzero minuteLeadingZero� $0 timedeferredtemp timeDeferredTemp. �T�� ��
� 
cobj
� 
txdl
�  
long
�� 
ctxt� =� 3� ��i/E�Y #�*�,FO�[�\[Zi\Zk��&��&2�&�&E�Y jE�O�� ��~����01���� &0 understandthetime understandTheTime�� ��2�� 2  �������� $0 timedeferredtemp timeDeferredTemp�� 0 inthe inThe�� 0 timemissing timeMissing��  0 �������������� $0 timedeferredtemp timeDeferredTemp�� 0 inthe inThe�� 0 timemissing timeMissing�� 0 timedeferred timeDeferred�� "0 minutesdeferred minutesDeferred�� 0 hoursdeferred hoursDeferred1 ������������������������������=i���	`
�� .sysodisAaleR        TEXT
�� 
days�� d
�� 
ctxt
�� 
cha ����
�� 
long������ 
�� 
hour
�� 
min 
�� 
bool�� �� �� jE�Y �� �j OiE�OPY ߠ�  
�E�OPY Ѡ� b��&[�\[Z�\Zi2�&�&E�O��&[�\[Zk\Z�2�&�&E�O��  ��� �� E�Y !�� 	 �� �& 
�� E�Y �� �� E�OPY k�a  a j OiE�OPY S�a  J�a   �E�Y 9�� 	 	�a �& 
�� E�Y !��
 	�a �& 
�� E�Y 	��� E�Y hO�� �������34���� 40 figuringtimetodesiredday figuringTimeToDesiredDay�� ��5�� 5  ������ 0 monthdesired monthDesired�� 0 
daydesired 
dayDesired��  3 ���������� 0 monthdesired monthDesired�� 0 
daydesired 
dayDesired�� 0 
todaysdate 
todaysDate�� $0 exactdesireddate exactDesiredDate4 ����������
�� .misccurdldt    ��� null
�� 
time
�� 
day 
�� 
mnth
�� 
year�� <*j  E�Oj��,FO�EQ�O���,FO���,FO�*j   ��,k��,FY hO��� �������67���� 00 daysfromtodaytoweekday daysFromTodayToWeekday�� ��8�� 8  ����  0 weekdaydesired weekdayDesired��  6 ��������  0 weekdaydesired weekdayDesired��  0 currentweekday currentWeekday�� 0 daysdeferred daysDeferred7 ��������
�� .misccurdldt    ��� null
�� 
wkdy
�� 
long�� �� 1*j  �,�&E�O��  jE�Y �� 
��E�Y 	��E�O�� ������9:���� 00 understandabsolutedate understandAbsoluteDate�� ��;�� ;  ���� 0 thetext theText��  9 ������ 0 thetext theText� 0 thedate theDate� 0 thepositions thePositions� 0 i  � 0 
targetdate 
targetDate: �����JNRVZ^a�����������������
� .misccurdldt    ��� null
� 
day 
� 
mnth
� 
days
� 
shdt� 
� 
txdl
� 
citm� 0 theday theDay� 0 themonth theMonth� 0 theyear theYear� 
� 
leng
� 
cobj
� 
time
� 
bool
� 
nmbr� 0 solvetheyear solveTheYear
� 
year� 40 adjustpositionsfornoyear adjustPositionsForNoYear��;*j  E�Ok��,FOl��,FO�k� E�O��,E�O��������v*�,FO��-E�O�ja ja ja E�O Fk�a ,Ekh �a �/ +a * ��a ,FY a * 
���,FY 	��a ,FU[OY��O��-E�O*j  E�Oj�a ,FO�a ,l	 �a ,ma & iY w�a ,m  *�a �a ,E/a &k+ �a ,FY 
*�k+ E�O�a �a ,E/a &��,FO�a ��,E/a &��,FO�*j   *j  a ,k�a ,FY hO�� �8��<=�� 40 adjustpositionsfornoyear adjustPositionsForNoYear� �>� >  �� 0 thepositions thePositions�  < ��� 0 thepositions thePositions� 0 yearposition yearPosition= ���� 0 theyear theYear� 0 themonth theMonth� 0 theday theDay� K��,k  ��,k��,FO��,k��,FY +�l  $��,��, ��,k��,FY ��,k��,FY hO�� ����?@�� 0 solvetheyear solveTheYear� �A� A  �� 0 num  �  ? �� 0 num  @ ������� �� �Y �� ����BC�� 
0 notify  � �D� D  ����� 0 thetitle theTitle�  0 thedescription theDescription� 0 thetype theType� 0 theurl theURL�  B ������ 0 thetitle theTitle�  0 thedescription theDescription� 0 thetype theType� 0 theurl theURL� 0 	isrunning 	isRunningC ����������~�}�|�{�z�y�x�w�v�u
� 
prcs
� 
bnid
� .corecnte****       ****
� 
appl
� 
anot
� 
dnot
�~ 
iapp�} 
�| .registernull��� ��� null
�{ 
leng
�z 
name
�y 
titl
�x 
desc
�w .notifygrnull��� ��� null
�v 
curl�u 
� }� *�-�[�,\Z�81j jE�UO� _� W*�b  �b  �b  �b  � O��,j  *���b  a �� Y *���b  a �a �a  UY h� �t��s�rEF�q�t  0 attachmentlist attachmentList�s �pG�p G  �o�n�o 0 theid theID�n 0 theclass theClass�r  E �m�l�k�j�i�m 0 theid theID�l 0 theclass theClass�k &0 theattachmentlist theAttachmentList�j ,0 numberoffileattached NumberOfFileAttached�i 0 i  F b�h��g�f�e�d�c�b�a1�`
�h 
docu
�g 
FCac
�f kfrmID  
�e 
FCno
�d 
OSfA
�c 
OSin
�b 
atfn
�a 
TEXT
�` 
FCpr�q �jvE�O��k/ ���  E*��0�, 7�E�OkE�O ,h��*�/�,e *�/�,�&�6FY hO�kE�[OY��UY hO��  E*��0�, 7�E�OkE�O ,h��*�/�,e *�/�,�&�6FY hO�kE�[OY��UY hUO�� �_j�^�]HI�\�_ $0 getridofdateinfo getRidOfDateInfo�^ �[J�[ J  �Z�Y�Z "0 theoriginalnote theOriginalNote�Y 0 
dueorstart 
dueOrStart�]  H �X�W�V�U�T�S�X "0 theoriginalnote theOriginalNote�W 0 
dueorstart 
dueOrStart�V 0 numparagraphs numParagraphs�U 0 i  �T 0 datespot dateSpot�S 0 thenote theNoteI 	�R�Q�P�O�N��M�L�
�R 
cpar
�Q 
leng
�P 
ret 
�O 
txdl
�N .corecnte****       ****
�M 
TEXT�L���\ ���-�,E�O  k�kh ��/� 
�E�OY h[OY��O�kv)�,FO�k  &��-j k  �E�Y �[�\[Zl\Zi2�&E�Y 9��  �[�\[Zk\Z�2�&E�Y !�[�\[Zk\Z�k2�[�\[Z�k\Zi2%�&E�O�)�,FO�� �KK�J�ILM�H
�K .aevtoappnull  �   � ****K k    �NN  {�G�G  �J  �I  L �F�E�D�C�B�F 0 	errortext 	errorText�E 0 errornumber errorNumber�D 0 	thefolder 	theFolder�C 0 
theproject 
theProject�B 0 i  M �&�A�@�?�> ��= � ��<�;�:�9�8 ��7 ��6 ��5�4O�3�2�1 ��0�/�.�-�,�+�*�)�(�'�&+�%D�$H�#K�"�!� ��������������������	���!0���
�	����������� ��������
#)/��INoy��������������������������������������������7>[�����������
�A 
FCDo�@ .0 checkforothertemplate checkForOtherTemplate�? :0 othertemplatescriptprojects otherTemplateScriptProjects
�> 
leng
�= 
btns
�< 
dflt�; 
�: .sysodlogaskr        TEXT
�9 
bhit�8 (0 changeoldtemplates changeOldTemplates�7 20 adjustoldtemplatesyntax adjustOldTemplateSyntax
�6 
dtxt
�5 
ttxt�4 0 	errortext 	errorTextO ������
�� 
errn�� 0 errornumber errorNumber��  �3��
�2 
FCff
�1 
pnam
�0 .corecnte****       ****�/ 0 thecount theCount
�. 
FCHi�- (0 templatefolderlist templateFolderList�, 00 templatefoldernamelist templateFolderNameList
�+ 
kocl
�* 
cobj�) 0 nextlistitem nextListItem
�( 
ctnr
�' 
pcls
�& 
FCAr
�% 
appr
�$ 
prmp
�# 
okbt�" 
�! .gtqpchltns    @   @ ns  �  00 selectedtemplatefolder selectedTemplateFolder� (0 selectionpositions selectionPositions� 00 templatefolderposition templateFolderPosition
� 
null
� 
FCfx
� 
FCPs
� FCPsFCPD
� FCPsFCPd� 0 projectlist projectList� "0 projectnamelist projectNameList
� .sysodisAaleR        TEXT� "0 chooselisttitle chooseListTitle�  0 chooselisttext chooseListText� 0 chooselistok chooseListOK� "0 selectedproject selectedProject� "0 projectposition projectPosition� 20 selectedprojecttemplate selectedProjectTemplate
� 
FCHe� 0 
folderlist 
folderList�  0 foldernamelist folderNameList� (0 defaultfolderfound defaultFolderFound�  0 folderposition folderPosition
�
 
FCno�	 "0 parawithpointer paraWithPointer
� 
cpar� 0 folderpointer folderPointer
� 
txdl
� 
citm
� 
TEXT� &0 folderpointername folderPointerName� 00 selectedfoldertemplate selectedFolderTemplate� $0 findthevariables findTheVariables�  0 thevariables theVariables�� 00 thelistvariableoptions theListVariableOptions�� 0 justduplicate justDuplicate
�� 
quot��  0 selectedfolder selectedFolder
�� 
insh
�� 
FCpr
�� 
insl
�� .coreclon****      � ****�� (0 newprojectinstance newProjectInstance�� 
0 notify  �� $0 populatetemplate populateTemplate
�� FCPsFCPh
�� 
bool
�� FCPsFCPa
�� 
ID  �� 0 theurl theURL
�� .OFOCFCsynull���     obj ��  ��  �� *0 findthereplacements findTheReplacements�� "0 thereplacements theReplacements
�� 
rslt�� 0 tempnote tempNote
�� 
ret �� 0 newnote newNote������  0 theattachments theAttachments�H���*�,�b   �)j+ E�O�i  hY hO��,j &����lv�l� �,E�O��  )�k+ Y hY hO a a a l a ,Ec  W X  �a   hY hOfEc  Y hO*a -a [a ,\Za @1j E` O*a -a [a ,\Za @1j j  �*a -a [a ,\Zf81E` OjvE`  O T_ [a !a "l kh a #E` $O�a %,a &,a '  a (E` $Y hO_ $�a ,%E` $O_ $_  6F[OY��O_  a )a *a +a ,a -a .a / 0E` 1O_ 1f  hY hO)_ 1_  fm+ 2E` 3O_ a "_ 3/Ec  Y a 4Ec  Ob  a 4  =*a 5-a [[[a ',a ,\Za 6@\[a 7,\Za 89A\[a 7,\Za 99A1E` :Y 8*a 5-a [[[a ',\Zb  8\[a 7,\Za 89A\[a 7,\Za 99A1E` :OjvE` ;O $_ :[a !a "l kh �a ,_ ;6F[OY��O_ ;�,j  a <j =OhY hOa >E` ?Oa @E` AOa BE` CO_ ;a )_ ?a +_ Aa -_ Ca / 0E` DO_ Df  hY hO)_ D_ ;fm+ 2E` EO_ :a "_ E/E` FO*a -a [[a ,\Za G@C\[a H,\Zf8A1E` IOa JkvE` KO T_ I[a !a "l kh a LE` $O�a %,a &,a '  a ME` $Y hO_ $�a ,%E` $O_ $_ K6F[OY��OfE` NOjE` OO_ Fa P,b   �kE` QO :_ Fa P,a R-j kih _ Fa P,a R�/b   
�E` QY h[OY��O_ Fa P,a R_ Q/E` SOb  a T%b  lv)a U,FO_ Sa V-E` SOa W)a U,FO_ Sa X&E` YO /k_ I�,Ekh _ Ia "�/a ,_ Y  
�E` OY h[OY��O_ Oj eE` NO_ Ia "_ O/E` ZY hY hO)_ Fk+ [a "k/E` \O)_ Fk+ [a "l/E` ]Oa ^E` _O_ \�,j  Da `_ a%b  %a b%_ a%a c%�a da elv�l� =�,E` _O_ _a f hY hY hO_ N �a gE` ?Oa hE` AOa iE` CO_ Ka )_ ?a +_ Aa -_ Ca / 0E` jO_ jf  hY 9_ ja kkv  a lE` ZY #)_ j_ Kfm+ 2kE` OO_ Ia "_ O/E` ZY hO_ _a m _ Za n  ?b   a o  _ Fa p*a q-a r3l sE` tY _ Fa p*a q-6l sE` tY @b   a u  _ Fa p_ Za q-a r3l sE` tY _ Fa p_ Za q-6l sE` tO)a va wb  a x�+ yO)_ tjvjvm+ zO_ ta 7,a { 
 _ ta 7,a 8 a |& a }_ ta 7,FY hOa ~_ ta ,%E` �O)a �a �b  	_ ��+ yOa �E` _O 
*j �W X � �hOhY hO)a �a �b  a ��+ yO)_ \_ ]l+ �E` �O_ �f  hY hO_ Za �  ?b   a �  _ Fa p*a q-a r3l sE` tY _ Fa p*a q-6l sE` tY @b   a �  _ Fa p_ Za q-a r3l sE` tY _ Fa p_ Za q-6l sE` tO_ ta 7,a {  a }_ ta 7,FY hO_ N �_ ta P,EQ` �O 8_ Fa P,a R-j kih _ �a R�/b   
�E` QY hO[OY��O_ �kv)a U,FO_ Qk  _ �[a R\[Zl\Zi2a X&E` �Y c_ Q_ Fa P,a R-j   _ �[a R\[Zk\Za �2a X&E` �Y 1_ �[a R\[Zk\Z_ Qk2_ �[a R\[Z_ Qk\Zi2%a X&E` �Oa �)a U,FO_ �_ ta P,FY hO)_ t_ \_ �m+ zE` �Oa �_ ta ,%E` �O)a �a �b  	_ ��+ yO 
*j �W X � �hUU ascr  ��ޭ