#!/usr/bin/env ruby
#!/usr/bin/env ruby

#The following little block opens the named file, counts the # of records, and then displays the count
#arr = IO.readlines("NAMESTEST.MWB")
#lines = arr.size
#puts "NamesInput has #{lines} lines in it."

#puts arr(1)

#IO.foreach ("NamesInput2.csv") do |line|
#  str = line
#  pos1 = str.index(",")
#  pos2 = str.index(",",pos1+1)
#  pos3 = str.index(",",pos2+1)
#  pos4 = str.index(",",pos3+1)
#  pos5 = str.index(",",pos4+1)
#  puts str[pos4,pos5]
#
#end
 
  


#class MegaGreeter
#  attr_accessor :names
#
#  # Create the object
#  def initialize(names = "World")
#    @names = names
#  end

  # Say hi to everybody
#  def say_hi
#    if @names.nil?
#      puts "..."
#    elsif @names.respond_to?("each")

#      # @names is a list of some kind, iterate!
#      @names.each do |name|
#        puts "Hello #{name}!"
#      end
#    else
#      puts "Hello #{@names}!"
#    end
#  end

  # Say bye to everybody
#  def say_bye
#    if @names.nil?
#      puts "..."
#    elsif @names.respond_to?("join")
#      # Join the list elements with commas
#      puts "Goodbye #{@names.join(", ")}.  Come back soon!"
#    else
#      puts "Goodbye #{@names}.  Come back soon!"
#    end
#  end

#end


#if __FILE__ == $0
#  mg = MegaGreeter.new
#  mg.say_hi
#  mg.say_bye

  # Change the name to an array of names
#mg.names = ["JOHNSON JEROME & WILLIAM LEE BOWMAN",

 NameArray = ["JOHNSON JEROME & WILLIAM LEE BOWMAN",
"JOHNSON WILLIE CLIFFORD & EVELYN",
"BREAKER JOE L (LIFE ESTATE)",
"MIZELL CATHERINE (SMITH)",
"JOHNSON EVA LOU",
"BOWEN MATTHEW T OR PAMELA W",
"SUMPTER EVA BAXTER",
"BENNAE CHRISTINA P K (YAGMAN)",
"RHETT ISACK JAMES (LIFE ESTATE)",
"GOVAN LORA ANN & MARGIE E BRADLEY",
"JOHNSON IDA MAE ET AL",
"CATO ANNIE R KEITT ET AL",
"DAWKINS EDWARD & JAMES & MARY",
"JONES LOU ALICE",
"GREEN VIVIAN (LIFE ESTATE)",
"JONES BESSIE L (LIFE ESTATE)",
"ALLEN JETHRO N SR (LIFE ESTATE)",
"WILLIAMS MARGARET & ALEXANDER & JOSEPH",
"DUKES MARLENE H (LIFE ESTATE)",
"BYRD DANIEL WILLIAMSON & ALICE ZEALY",
"MOYER ANGEL ELAINE & JASON LEE",
"MCGREW JEAN J OR SAMUEL L",
"DASH DAISY LEE W & RICHARD",
"WIMBERLY MAMIE SUE K (LIFE ESTATE)",
"SIMMONS JAMES A I MABELLINE M",
"METTS BETTY JO K & MICHAEL R",
"HILTON DIANE C (CRAWFORD)",
"KIZER FAYETTA M (LIFE ESTATE)",
"INFINGER JESSIE BELL KIZER",
"KIZER G LIN (LIFE ESTATE)",
"MARCHANT PATRICIA A & TOMMY (JTROS)",
"CARN JOHN OTIS JR & JEANETTE W CARN",
"LEGGETT KIMBERLY JANE & CHAD",
"SAULISBURY DOROTHY M INFINGER",
"MARCHANT HERMAN E (LIFE ESTATE)",
"TUCKER MARTHA A (LEMON)",
"BROWN BETTY ANN (WHITE)",
"WILLIAMS MINNIE & JIMMY & WILBERT&ROBERT",
"MURRAY CLEO I (LIFE ESTATE)",
"MACK JOE LOUIS",
"BANKS CURTIS D OR PECOLA",
"GEDDIS MARY ANN BROWN",
"BROWN MARTHA S OR VINSON",
"SHARP KIMBERLY WESTBURY (HENDERSON)",
"WALKUP WELBY E & DENISE D (TRUSTEES)",
"CANADAY DOTSIE (LIFE ESTATE)",
"TATE GREGORY, STEPHANIE & THOMAS",
"CARN PATRICIA & MYRON & ANDREW & LEROY",
"TATE GREGORY, STEPHANIE & THOMAS",
"MACK MARY A (LIFE ESTATE)",
"CARSON EARTHA M KELLEY (LIFE ESTATE)",
"GANT LIZZIE A (FAIR)",
"JAHN GARON LEE & CARYN GAYLE",
"JAHN RICKY L OR VICTORIA L",
"CARSON J C & RUTH E",
"WAGERS L O JR & WAMER VANESSA J W",
"PENDARVIS BETTY T (LIFE ESTATE)",
"INFINGER MARJORIE ANNE (LIFE ESTATE)",
"ARDIS GERALD L SR & JENNIFER B (JROS)",
"INFINGER GLADYS (LIFE ESTATE)",
"PENDARVIS SHELBY JEAN (LIFE ESTATE)",
"RICHARDSON D P & NINA B",
"SHULER HAROLD CRAIG & KATHY",
"KIMLEY TERRY J JR OR MERETHA E",
"WAGERS RON MILLER",
"SKELTON CRYSTAL (LIFE ESTATE)",
"STREET NIKITA KHRUSCHEV & CHERYL ANN",
"INFINGER RITA B (LIFE ESTATE)",
"HARTZOG ELLEN MARGARET W RICE",
"HARTZOG ELLEN MARGARET W RICE",
"JOHNSON SHARON & ET AL",
"PENDARVIS MARY FRANCES (LIFE ESTATE)",
"PETERS MARY GRACE I LIFE ESTATE",
"LINCOLN MACK & C D THOMPSON",
"SIMMONS LENNERD C (MACK)",
"LEMON EMMA, KEITH, JAMIE, PAMELA, LISA",
"SWEATMAN LATROY LEE OR PAMELA E",
"HENDERSON JULIA M (LIFE ESTATE)",
"DANTZLER JOBATHA P TRUSTEE OF JOBATHA P",
"HUFF KIM RYAN & KERRY H",
"CARTER LINDA DIANE B",
"BYRD LOUIS MORRIS (LIFE ESTATE)",
"REEVES RALPH F (LIFE EST)",
"GANT THELMA & ORENDER & TITUS & BENNIE",
"BROWN EILEEN (LIFE ESTATE) & ET AL",
"FOX LUN CARL ET AL",
"CROWE THOMAS EUGENE & ROSEMARY",
"DRIGGERS ODOM SARAH F P (BAIR)",
"BROWN OTIS SR & CARRIE & OTIS JR",
"BROWN ALMA (SHULER)",
"PORRATA ADOLFO OR RAQUEL",
"CALLOWAY DOROTHY & ET AL",
"EDWARDS SAMMIE & CLARA MAE & LASHONDA",
"REEVES ERNEST J & ET AL",
"DISHER EDNA & MABLE & ROSETTA & DEBBIE &",
"SYPHRETT DAVID OR CHRISTINE",
"FEDRICK SARAH MAE & ANNIE S DASTINEAU",
"BRANCH JUSTIN ROSS & BRANDY NICOLE",
"SHULER FRANCIS & LILLIE MAE (LIFE EST)",
"WALTERS D C & PATRICIA H",
"SINGLETON PEARLIE M WEST",
"OTT RILEY",
"HOPKINS EVELYN R & ET AL",
"BROWN ROSA E (LIFE ESTATE)",
"BRITT GERTIE ET AL AL",
"MATTHEWS LULA MAE S",
"HILL ERNEST & RUTHA MAE (BOTH LIFE EST)",
"DELEE KAY JAY",
"HEZEKIAH RANDY & ANNIE (LIFE ESTATE)",
"WEST KAY FRANCES",
"WEST KAY FRANCES",
"PEYTON RALPH S & JO ANN (JTROS)",
"KELLY MARION & ROSALEE W (LIFE ESTATE)",
"HUTTO DORIS S (LIFE ESTATE)",
"MOULTRIE JANNIE LEE (LIFE ESTATE)",
"MOULTRIE TISCIA MEY B",
"MCMILLAN KAY FRANCIS",
"BYRD GLORIA (LIFE ESTATE)",
"RICHARDSON LEVI (LIFE ESTATE)",
"SINGLETON CARRIE & ISAIAH SUMMERS (LIFE)",]
  
   

lines = NameArray.size
puts "NamesInput has #{lines} lines in it."

#puts mg.names(1)
@x = 0

while @x < lines
  @x = @x + 1
  a = NameArray[@x]
  puts "Hello! #{a}" 
end

#IO.foreach (arr) do |line|
#  str = line
#  pos1 = str.index(",")
#  pos2 = str.index(",",pos1+1)
#  pos3 = str.index(",",pos2+1)
#  pos4 = str.index(",",pos3+1)
#  pos5 = str.index(",",pos4+1)
#  puts str[pos4,pos5]

#end
#end