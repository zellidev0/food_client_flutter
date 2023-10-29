// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> de = {
  "ui": {
    "single_recipe_view": {
      "dialogs": {
        "add_to_shopping_cart": {
          "title": "Zur Einkaufsliste hinzufügen?",
          "content": "Für wie viele Personen soll dieses Rezept hinzugefügt werden?",
          "actions": {
            "amount_persons": {
              "one": "{amount} Person",
              "other": "{amount} Personen"
            }
          }
        }
      },
      "snack_bars": {
        "add_to_cart_success": "Rezept wurden der Einkaufsliste hinzugefügt.",
        "share_recipe_error": "Rezept konnte nicht geteilt werden."
      },
      "difficulty": {
        "easy": "Einfach",
        "medium": "Mittel",
        "hard": "Schwer"
      }
    },
    "main_view": {
      "bottom_navigation_destination": {
        "explore": "Entdecken",
        "shopping_cart": "Einkaufsliste",
        "account": "Konto"
      }
    },
    "home_view": {
      "filters": {
        "tags": "Tags",
        "cuisines": "Küche",
        "name_with_amount": "{name} #{amount}"
      },
      "empty_states": {
        "no_recipes": "Keine Rezepte gefunden!",
        "no_more_recipes": "Keine weiteren Rezepte gefunden!"
      },
      "error_states": {
        "no_recipes": "Fehler beim suchen nach Rezepten!",
        "no_more_recipes": "Fehler beim suchen nach weiteren Rezepten!"
      },
      "buttons": {
        "try_again": "Nochmal versuchen"
      }
    },
    "cart_view": {
      "empty_states": {
        "empty_cart": "Es sind bisher keine\n Rezepte im Einkaufswagen"
      },
      "dialogs": {
        "remove_recipe": {
          "title": "Rezept entfernen?",
          "content": "Soll das komplette Rezept aus deiner Einkaufsliste entfernt werden, oder nur die abgehakten Zutaten?",
          "actions": {
            "cancel": "Abbrechen",
            "only_ticked_off": "Nur abgehaktes",
            "whole_recipe": "Das ganze Rezept"
          }
        }
      },
      "modals": {
        "sorting_modal": {
          "button_text": "Sortieren"
        }
      }
    }
  },
  "general": {
    "others": {
      "instructions": "Anleitung",
      "total": "Gesamt",
      "missing": "Fehlt noch",
      "ticket_off": "Abgehakt"
    }
  }
};
static const Map<String,dynamic> en = {
  "ui": {
    "single_recipe_view": {
      "dialogs": {
        "add_to_shopping_cart": {
          "title": "Add to shopping cart?",
          "content": "Add this recipe to the shopping cart, with the following serving:",
          "actions": {
            "amount_persons": {
              "one": "{amount} Person",
              "other": "{amount} Persons"
            }
          }
        }
      },
      "snack_bars": {
        "add_to_cart_success": "Recipe added to shopping cart.",
        "share_recipe_error": "Could not share recipe."
      },
      "difficulty": {
        "easy": "easy",
        "medium": "normal",
        "hard": "difficult"
      }
    },
    "main_view": {
      "bottom_navigation_destination": {
        "explore": "Explore",
        "shopping_cart": "Shopping Cart",
        "account": "Account"
      }
    },
    "home_view": {
      "filters": {
        "tags": "Tags",
        "cuisines": "Cuisine",
        "name_with_amount": "{name} #{amount}"
      },
      "empty_states": {
        "no_recipes": "No recipes found",
        "no_more_recipes": "No more recipes found"
      },
      "error_states": {
        "no_recipes": "Error fetching recipes from the server",
        "no_more_recipes": "Error fetching more recipes from the server"
      },
      "buttons": {
        "try_again": "Try again"
      }
    },
    "cart_view": {
      "empty_states": {
        "empty_cart": "Nothing in your \n shopping cart yet"
      },
      "dialogs": {
        "remove_recipe": {
          "title": "Remove recipe?",
          "content": "Remove this recipe from your shopping cart or only the ticked off ingredients?",
          "actions": {
            "cancel": "Cancel",
            "only_ticked_off": "Only ticked off",
            "whole_recipe": "Whole recipe"
          }
        }
      },
      "modals": {
        "sorting_modal": {
          "button_text": "Sorting"
        }
      }
    }
  },
  "general": {
    "others": {
      "instructions": "Instructions",
      "total": "Total",
      "missing": "Missing",
      "ticket_off": "Ticked off"
    }
  }
};
static const Map<String, Map<String,dynamic>> mapLocales = {"de": de, "en": en};
}
