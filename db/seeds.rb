User.create!(
  email: "test@test.com",
  password:"foobar",
  password_confirmation: "foobar",
  name: "Admin User",
  roles: "site_admin"
)
puts "1 admin user created"

User.create!(
  email: "test2@test.com",
  password:"foobar",
  password_confirmation: "foobar",
  name: "Regular User"
)
puts "1 regular user created"

3.times do |topic|
  Topic.create!(
  title: "Topic #{topic}",
  language: :english
  )
end

3.times do |topic|
  Topic.create!(
  title: "Tópico #{topic}",
  language: :portuguese
  )
end

10.times do |blog|
  Blog.create!(
    title: "Blog #{blog}",
    body: "He is here... Obi-Wan Kenobi! What makes you think so? A tremor in the Force. The last time I felt it was in the presence of my old master. Surely he must be dead by now. Don't underestimate the power of the Force. The Jedi are extinct, their fire has gone out of the universe. You, my friend, are all that's left of their religion. Yes. Governor Tarkin, we have an emergency alert in detention block A A-twenty-three. The princess! Put all sections on alert!

    You're safe! We had feared the worst. When we heard about Alderaan, we were afraid that you were... We don't have time for our sorrows, Commander. The battle station has surely tracked us here. It's the only explanation for the ease of our escape. You must use the information in this R2 unit to plan the attack. It is our only hope. Yes. We are approaching the planet Yavin. The Rebel base is on a moon on the far side. We are preparing to orbit the planet.

    Don't be too proud of this technological terror you've constructed. The ability to destroy a planet is insignificant next to the power of the Force. Don't try to frighten us with your sorcerer's ways, Lord Vader. Your sad devotion to that ancient religion has not helped you conjure up the stolen data tapes, or given you clairvoyance enough to find the Rebel's hidden fort... I find your lack of faith disturbing. Enough of this! Vader, release him! As you wish. This bickering is pointless. Lord Vader will provide us with the location of the Rebel fortress by the time this station is operational. We will then crush the Rebellion with one swift stroke.

    What? Yahoo! Look out! You're all clear, kid. Now let's blow this thing and go home! Stand by to fire at Rebel base. Standing by. Great shot, kid. That was one in a million. Remember, the Force will be with you...always.

    I'm not going anywhere. They're going to execute her. Look, a few minutes ago you said you didn't want to just wait here to be captured. Now all you want to do is stay. Marching into the detention area is not what I had in mind. But they're going to kill her! Better her than me... She's rich. Rich? Yes. Rich, powerful! Listen, if you were to rescue her, the reward would be... What? Well more wealth that you can imagine. I don't know, I can imagine quite a bit! You'll get it! I better! You will... ",
    topic_id: Topic.english.last.id,
    language: :english,
    status: :published
  )
end
puts "10 Blog posts in english created"

10.times do |blog|
  Blog.create!(
    title: "Bloguis #{blog}",
    body: "Mussum Ipsum, cacilds vidis litro abertis. Interagi no mé, cursus quis,
    vehicula ac nisi. Posuere libero varius. Nullam a nisl ut ante blandit hendrerit.
    Aenean sit amet nisi. Mais vale um bebadis conhecidiss, que um alcoolatra anonimiss.
    Delegadis gente finis, bibendum egestas augue arcu ut est.
    Si num tem leite então bota uma pinga aí cumpadi!
    Viva Forevis aptent taciti sociosqu ad litora torquent
    Sapien in monti palavris qui num significa nadis i pareci latim.
    A ordem dos tratores não altera o pão duris
    Per aumento de cachacis, eu reclamis. Paisis, filhis, espiritis santis.
    Admodum accumsan disputationi eu sit. Vide electram sadipscing et per.
    Casamentiss faiz malandris se pirulitá.",
    topic_id: Topic.portuguese.last.id,
    language: :portuguese,
    status: :published
  )
end
puts "10 Blog posts in portuguese created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
  )
end
puts "5 Skills posts created"
8.times do |project|
  Project.create!(
    title: "Project title: #{project}",
    subtitle: "Ruby on Rails",
    body: "What happened? Where? Found him in a junk pile? Oh, what a mess. Chewie, do you think you can repair him? Lando's got people who can fix him. No, thanks. I'm sorry. Am I interrupting anything? Not really. You look absolutely beautiful. You truly belong here with us among the clouds. Thank you. Will you join me for a little refreshment? Everyone's invited, of course. Having trouble with you droid? No. No problem. Why?",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200",
    language: :english
  )
end

1.times do |project|
  Project.create!(
    title: "Project title: #{project}",
    subtitle: "Angular",
    body: "What happened? Where? Found him in a junk pile? Oh, what a mess. Chewie, do you think you can repair him? Lando's got people who can fix him. No, thanks. I'm sorry. Am I interrupting anything? Not really. You look absolutely beautiful. You truly belong here with us among the clouds. Thank you. Will you join me for a little refreshment? Everyone's invited, of course. Having trouble with you droid? No. No problem. Why?",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200",
    language: :english
  )
end

puts "9 Projects in english created"

9.times do |project|
  Project.create!(
    title: "Projeto título: #{project}",
    subtitle: "Ruby on Rails",
    body: "Silvio Santos Ipsum vem pra lá, mah você vai pra cá.
    Agora vai, agora vem pra láamm. Mah roda a roduamm.
    Ma quem quer dinheiroam? O prêmio é em barras de ouro,
    que vale mais que dinheiroam. Vem pra lá, mah você vai pra cá.
    Agora vai, agora vem pra láamm. É por sua conta e riscoamm?
    Ma não existem mulher feiam, existem mulher que não conhece
    os produtos Jequitiamm. Mah você mora com o papai ou com a mamãem?
    Ma! Ao adquirir o carnê do Baú, você estará concorrendo a um prêmio
      de cem mil reaisam. É por sua conta e riscoamm?
      Ma o Silvio Santos Ipsum é muitoam interesanteam. Com ele ma
      você vai gerar textuans ha haae. Qual é a musicamm?
      Wellintaaammmmmmmmm. Você veio da caravana de ondeammm?
      Ha haeeee. Hi hi. É dinheiro ou não éam? Mah você não consegue
      né Moisés? Você não consegueam. Eu não queria perguntar isso
      publicamente, ma vou perguntar. Carla, você tem o ensino fundamentauam?
      É dinheiro ou não éam? Ma vejam só, vejam só. Ma você está certo dissoam?",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200",
    language: :portuguese
  )
end
puts "9 Projects in portuguese created"

3.times do |technology|
  Project.last.technologies.create!(
    name: "Technology #{technology}"
  )
end
puts "3 technologies posts created"
