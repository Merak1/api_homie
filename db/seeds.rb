# tennants
tennant1 = Tennant.create(
  name:         "David Tennant",
  email:        "david@tennant.com",
  phone:        225_415_744,
  availability: "all day babyy"
)
tennant2 = Tennant.create(
  name:         "Peter Griffin",
  email:        "fami_guy@seth.com",
  phone:        22_417_451,
  availability: "hksdjbnjk"
)
# properties

_property1 = Property.create(
  name:         "First property",
  description:  "Day after day, day after day, We stuck, nor breath nor motion",
  rental_price: 500,
  status:       :published,
  tennant:      tennant1
)
_property2 = Property.create(
  name:         "Second property",
  description:  "As idle as a painted ship Upon a painted ocean.",
  rental_price: 3200,
  status:       :published,
  tennant:      tennant1
)
_property3 = Property.create(
  name:         "Third property",
  description:  "Water, water, every where, And all the boards did shrink",
  rental_price: 2500,
  status:       :published,
  tennant:      tennant2
)

_property4 = Property.create(
  name:         "Fourth property",
  description:  "Water, water, every where, Nor any drop to drink.",
  rental_price: 3300,
  status:       :published,
  tennant:      tennant2
)
_property5 = Property.create(
  name:         "Fifth property",
  description:  "Day after day, day after day",
  rental_price: 5500,
  status:       :deleted,
  tennant:      tennant2
)
