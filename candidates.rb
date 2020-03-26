jane = {
  first_name: "Jane",
  last_name: "Doe",
  level: :senior_level,
  age: 30,
  occupation: "Software Developer",
  employed: true,
  current_salary: 125000.00,
  languages: ["Ruby", "JavaScript", "Go"]
}


sara = {
  first_name: "Sara",
  last_name: "Smith",
  level: :midr_level,
  age: 26,
  occupation: "Software Developer",
  employed: true,
  current_salary: 80000.00,
  languages: ["Ruby", "Python"]
}

jason = {
  first_name: "Jason",
  last_name: "Gray",
  level: :entry_level,
  age: 23,
  occupation: "Student",
  employed: false,
  current_salary: 0.00,
  languages: ["C++", "Python"]
}


candidates = [jane, sara, jason]

def average_age(people)
  ages = people.map { |person| person[:age] }
  total_ages = ages.reduce(0.0) do |total, age|
    total += age
  end
  total_ages / ages.length
end

average_age(candidates)


def language_screening(people, language)
  people.select { |person| person[:languages].map {|l| l.downcase }.include? language.downcase}
end

language_screening(candidates, "Python")
language_screening(candidates, "GO")
language_screening(candidates, "javascript")