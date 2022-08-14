puts "❌ Remove db Stuff"
Company.destroy_all
Company.reset_pk_sequence
Category.destroy_all
Category.reset_pk_sequence
Pattern.destroy_all
Pattern.reset_pk_sequence
PatternCategory.destroy_all
PatternCategory.reset_pk_sequence
#Reset Primary Key



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

puts "🌱 Seeding Fabrics..."
Fabric.create(name: "Baize")
Fabric.create(name: "Charmeuse")
Fabric.create(name: "Chenille")
# Fabric.create(name: "Chino")
Fabric.create(name: "Cotton")
Fabric.create(name: "Cotton Blends")
# Fabric.create(name: "Corduroy")
# Fabric.create(name: "Crepe")
Fabric.create(name: "Denim")
Fabric.create(name: "Stretch Denim")
# Fabric.create(name: "Fleece")
Fabric.create(name: "Felt")
# Fabric.create(name: "French Terry")
Fabric.create(name: "Georgette")
Fabric.create(name: "Jacquard")
Fabric.create(name: "Jersey")
Fabric.create(name: "Jute")
Fabric.create(name: "Lace")
Fabric.create(name: "Linen")
Fabric.create(name: "Linen Blends")
Fabric.create(name: "Lycra")
# Fabric.create(name: "Ponte")
Fabric.create(name: "Poplin")
Fabric.create(name: "Rayon")
Fabric.create(name: "Sateen")
Fabric.create(name: "Satin")
Fabric.create(name: "Silk")
Fabric.create(name: "Spandex")
# Fabric.create(name: "Sweatshirt Fleece")
Fabric.create(name: "Twill")
Fabric.create(name: "Two-way Stretch")
Fabric.create(name: "Velvet")
Fabric.create(name: "Wool")
Fabric.create(name: "Wool Blends")

puts "🌱 Seeding Patterns..."
# Seed your database here
# Pattern.create(
  # company_isad: 0, 
  # category_isda: 0,
#   pattern_code: "",
#   notions: [""],
#   size: "",
#   yardage: 0,
#   fabrics: [""],
#   extras: "",
#   ismage: ""
#   )


simp1 = Pattern.create(
  company_id: 2, 
  pattern_code: "S8561",
  notions: ["1/2\" elastic (1.5yd)",],
  size: "1X - 5X",
  yardage: 0,
  extras: "These knit leggings are available in both Misses' sizes XS to XL and Plus sizes 1X to 5X. Special features include contrasting twisted tabs at ankle, stirrup detail, convenient side pockets, and super-flattering rear curved seam.",
  image: "https://via.placeholder.com/200x280.png?text=Sewing+Pattern+Placeholder"
  )
  
  PatternCategory.create(pattern_id: simp1.id, category_id: 4)
  PatternCategory.create(pattern_id: simp1.id, category_id: 4)
  PatternFabric.create(pattern_id: simp1.id, fabric_id: 16)
  PatternFabric.create(pattern_id: simp1.id, fabric_id: 22)
  
  
  simp2 = Pattern.create(
    company_id: 2, 
    pattern_code: "S9590",
    notions: ["(2) 1.5in Overall Buckles", "(4) 5/8in Buttons"],
    size: "XS - XL",
    yardage: 4,
    extras: "Relaxed fit, straight leg overalls in ankle and cropped lengths have adjustable shoulder straps attaching to bib with overall buckles. Features bib and back patch pockets, front yoke and pockets, button closures and top stitched details",
    image: "https://via.placeholder.com/200x280.png?text=Sewing+Pattern+Placeholder"
    )
    PatternCategory.create(pattern_id: simp2.id, category_id: 3)
    PatternCategory.create(pattern_id: simp2.id, category_id: 9)
    PatternFabric.create(pattern_id: simp2.id, fabric_id: 6)
    PatternFabric.create(pattern_id: simp2.id, fabric_id: 23)
    PatternFabric.create(pattern_id: simp2.id, fabric_id: 14)
    PatternFabric.create(pattern_id: simp2.id, fabric_id: 17 )
    
    butt1 = Pattern.create(
      company_id: 4, 
      pattern_code: "B6871",
    notions: ["(1) 22\" (56 cm) invisible zipper", "(6) 1\" (2.5 cm) buttons"],
    size: "6-14",
    yardage: 2.75,
    extras: "High waist, princess seam dress has A-line shape, sleeve variations, decorative buttons and back invisible zipper. Views A and B have collar. Separate pattern pieces are included for cup sizes A/B, C, D. Complete the look with these silver shank buttons.",
    image: "https://via.placeholder.com/200x280.png?text=Sewing+Pattern+Placeholder"
    )
    
    PatternCategory.create(pattern_id: butt1.id, category_id: 1)
    PatternCategory.create(pattern_id: butt1.id, category_id: 7)
    PatternCategory.create(pattern_id: butt1.id, category_id: 9)
    PatternFabric.create(pattern_id: butt1.id, fabric_id: 17 )
    PatternFabric.create(pattern_id: butt1.id, fabric_id: 14 )
    PatternFabric.create(pattern_id: butt1.id, fabric_id: 26 )
    
    butt2 = Pattern.create(
      company_id: 4, 
      pattern_code: "B6863",
      notions: ["A, B: 2 yds (1.9 m) of 1/2\" (1.3 cm) Cord, Twill or Ribbon", "1/2 yd. (0.5 m) of 1/2\" (1.3 cm) Twill Tape or Ribbon", "A: One 26\" (66 cm) Separating Zipper.", "B: One 24\" (61 cm) Dual Separating Zipper"],
      size: "6-14",
  yardage: 2.75,
  extras: "Misses' zipper front jacket has front pockets and a hood.",
  image: "https://via.placeholder.com/200x280.png?text=Sewing+Pattern+Placeholder"
  )
  PatternCategory.create(pattern_id: butt2.id, category_id: 6)
  PatternCategory.create(pattern_id: butt2.id, category_id: 9)
  PatternFabric.create(pattern_id: butt2.id, fabric_id: 11  )
  
  vog1 = Pattern.create(
    company_id: 3, 
    pattern_code: "V1801",
    notions: ["One 22\" (56 cm) Invisible Zipper"],
    size: "XL",
    yardage: 5.125,
    extras: "Misses' dress, very loose-fitting at bust, has deep V-neck, bodice pleats, raised waist, side front seams, side pockets, invisible back zipper & baby hems.",
    image: "https://via.placeholder.com/200x280.png?text=Sewing+Pattern+Placeholder"
    )
    PatternCategory.create(pattern_id: vog1.id, category_id: 1)
    PatternCategory.create(pattern_id: vog1.id, category_id: 7)
    PatternCategory.create(pattern_id: vog1.id, category_id: 9)
    PatternFabric.create(pattern_id: vog1.id, fabric_id: 20 )
    
    vog2 = Pattern.create(
      company_id: 3, 
      pattern_code: "V1894",
      notions: ["Swimwear Elastic: 3 yds for A", "1-3/4 yds.for B"],
      size: "XL",
      yardage: 1.5,
      extras: "Lined swimsuits have contrast narrow binding, ruching, front cutouts, and leg openings finished with elastic. View A is halter style and ties in back. View B has narrow straps.",
      image: "https://via.placeholder.com/200x280.png?text=Sewing+Pattern+Placeholder"
      )
      PatternCategory.create(pattern_id: vog2.id, category_id: 4)
      PatternCategory.create(pattern_id: vog2.id, category_id: 9)
      PatternFabric.create(pattern_id: vog2.id, fabric_id: 16 )



puts "✅ Done seeding!"
