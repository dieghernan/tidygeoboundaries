# Utils names

    Code
      gb_helper_countrynames(c("Espagne", "United Kingdom"))
    Output
      [1] "ESP" "GBR"

---

    Code
      gb_helper_countrynames(c("ESP", "POR", "RTA", "USA"))
    Message
      ! Countries ommited: POR and RTA
      i Review the names or switch to ISO3 codes.
    Output
      [1] "ESP" "USA"

# Problematic names

    Code
      gb_helper_countrynames(c("Espagne", "Antartica"))
    Output
      [1] "ESP" "ATA"

---

    Code
      gb_helper_countrynames(c("spain", "antartica"))
    Output
      [1] "ESP" "ATA"

---

    Code
      gb_helper_countrynames(c("Spain", "Kosovo", "Antartica"))
    Output
      [1] "ESP" "XKX" "ATA"

---

    Code
      gb_helper_countrynames(c("ESP", "XKX", "DEU"))
    Output
      [1] "ESP" "XKX" "DEU"

