puts "🌱 Seeding Companies..."
# McCall's website not working
Company.create(name: "McCall's", website:"https://www.sewdirect.com/mccalls/")
Company.create(name: "Simplicity", website:"https://simplicity.com/")
Company.create(name: "Vogue", website:"http://www.voguepatterns.us/")
Company.create(name: "Butterick", website:"https://somethingdelightful.com/butterick/")

puts "🌱 Seeding Categories..."
Category.create(name: "Dresses")
Category.create(name: "Tops & Vests")
Category.create(name: "Skirts, Pants, & Jumpsuits")
Category.create(name: "Activewear & Swimsuits ")
Category.create(name: "Sportswer & Coordinates")
Category.create(name: "Jackets & Coats")
Category.create(name: "Special Occasion")
Category.create(name: "Lingerie")
Category.create(name: "Women")
Category.create(name: "Men")
Category.create(name: "Kids")
Category.create(name: "Toys")

puts "🌱 Seeding Patterns..."
# Seed your database here
# Pattern.create(
#   company_id: 0, 
#   category_id: 0,
#   pattern_code: "",
#   notions: [""],
#   size: "",
#   yardage: 0,
#   fabrics: [""],
#   extras: "",
#   image: ""
#   )


Pattern.create(
  company_id: 2, 
  category_id: 4,
  pattern_code: "S8561",
  notions: ["1/2\" elastic (1.5yd)",],
  size: "1X - 5X",
  yardage: 0,
  fabrics: ["active wear knits" , "spandex blends", "two way stretch"],
  extras: "These knit leggings are available in both Misses' sizes XS to XL and Plus sizes 1X to 5X. Special features include contrasting twisted tabs at ankle, stirrup detail, convenient side pockets, and super-flattering rear curved seam.",
  image: "/images/S8561_envelope_front__14083.jpg"
  )

  
Pattern.create(
  company_id: 2, 
  category_id: 4,
  pattern_code: "S8561",
  notions: ["(2) 1.5in Overall Buckles", "(4) 5/8in Buttons"],
  size: "XS - XL",
  yardage: 4,
  fabrics: ["denim", "twill", "chino", "corduroy", "cotton", "linen", "Poplin"],
  extras: "Relaxed fit, straight leg overalls in ankle and cropped lengths have adjustable shoulder straps attaching to bib with overall buckles. Features bib and back patch pockets, front yoke and pockets, button closures and top stitched details",
  image: "/images/S9590_envelope_front__28503.jpg"
  )

  Pattern.create(
  company_id: 4, 
  category_id: 1,
  pattern_code: "B6871",
  notions: ["(1) 22\" (56 cm) invisible zipper", "(6) 1\" (2.5 cm) buttons"],
  size: "6-14",
  yardage: 2.75,
  fabrics: ["crepe", "poplin", "ponte", "linen", "wool"],
  extras: "High waist, princess seam dress has A-line shape, sleeve variations, decorative buttons and back invisible zipper. Views A and B have collar. Separate pattern pieces are included for cup sizes A/B, C, D. Complete the look with these silver shank buttons.",
  image: "/images/B6871_envelope_front__59436.jpg"
  )

  
  Pattern.create(
  company_id: 4, 
  category_id: 6,
  pattern_code: "B6863",
  notions: ["A, B: 2 yds (1.9 m) of 1/2\" (1.3 cm) Cord, Twill or Ribbon", "1/2 yd. (0.5 m) of 1/2\" (1.3 cm) Twill Tape or Ribbon", "A: One 26\" (66 cm) Separating Zipper.", "B: One 24\" (61 cm) Dual Separating Zipper"],
  size: "6-14",
  yardage: 2.75,
  fabrics: ["interlock", "french terry", "jersey", "sweatshirt fleece"],
  extras: "Misses' zipper front jacket has front pockets and a hood.",
  image: "/images/B6863_envelope_front__32413.jpg"
  )

  Pattern.create(
    company_id: 3, 
    category_id: 7,
    pattern_code: "V1801",
    notions: ["One 22\" (56 cm) Invisible Zipper"],
    size: "XL",
    yardage: 5.125,
    fabrics: ["crepe back satin", "rayon twill", "broadcloth"],
    extras: "Misses' dress, very loose-fitting at bust, has deep V-neck, bodice pleats, raised waist, side front seams, side pockets, invisible back zipper & baby hems.",
    image: "/images/V1801_envelope_front__91421.jpg"
    )

    Pattern.create(
      company_id: 3, 
      category_id: 4,
      pattern_code: "V1894",
      notions: ["Swimwear Elastic: 3 yds for A; 1-3/4 yds.for B"],
      size: "XL",
      yardage: 1.5,
      fabrics: ["lycra"],
      extras: "Lined swimsuits have contrast narrow binding, ruching, front cutouts, and leg openings finished with elastic. View A is halter style and ties in back. View B has narrow straps.",
      image: "V1894_envelope_front__43475.jpg"
      )



puts "✅ Done seeding!"
