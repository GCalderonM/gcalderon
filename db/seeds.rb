admin = User.create!([
  {
    email: "admin@gcalderonm.dev",
    password_digest: "$2a$12$.oaYJi6HmLPZ8TfvQLjCjOjEkz2vuARMEKHj23QC3Lp8SWHwz4AKO"
    verified: true,
  }
])

p "Created #{Admin.count} admin"

works = Work.create!([
  {
    company_name: "10code",
    job: "Web developer",
    start_year: "2021",
    finish_year: "2022"
  },
  {
    company_name: "GAC Travel",
    job: "Backend PHP developer",
    start_year: "2022",
    finish_year: "Present"
  }
])

p "Created #{Work.count} works"

projects = Project.create!([
  {
    name: "Giffy",
    description: "midudev course how to create gifs using Giphy API with React.",
    project_url: "https://github.com/GCalderonM/giffy"
  },
  {
    name: "Plutorescue",
    description: "School last project. Made with PHP, Laravel, MySQL, TailwindCSS. Users can register/login and post announces about abandoned animals. People can contact them.",
    project_url: "https://github.com/GCalderonM/plutorescue"
  },
  {
    name: "Gestion productos",
    description: "School learning project. Made with NodeJS, Express, MongoDB, Passport, Handlebars and BCryptJS. Basic roles app. Admin can create, update, read and destroy products. User can only view it.",
    project_url: "https://github.com/GCalderonM/gestion_de_productos"
  },
  {
    name: "Porfaxt",
    description: "School learning android app that allows to sign in with Google or Email, and let you compress files like .docx, .txt, .word, etc.. and upload it to Firebase",
    project_url: "https://github.com/GCalderonM/porfaxt"
  }
])

p "Created #{Project.count} projects"

