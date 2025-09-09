# Translation Standards for tlhIngan Hol ONI

This document establishes the linguistic and technical standards for the Klingon translation of Oxygen Not Included.

## 🔤 Orthography & Typography

### Apostrophes
- **ALWAYS use typographic apostrophes**: `'` (Unicode U+2019)
- **NEVER use ASCII apostrophes**: `'` (Unicode U+0027)
- **Examples**: `DIch`, `pa'`, `mI'lugh`, `chenmoH`

### Capitalization
- Follow standard Klingon conventions
- Proper nouns may use initial capitals
- UI elements follow English capitalization patterns when needed

## 📖 Vocabulary Guidelines

### Priority Order for Word Choice
1. **Canon Klingon words** (from official dictionary)
2. **Established compound words** (from this project's glossary)
3. **New compounds using canon roots** (following Klingon grammar)
4. **Descriptive phrases** (when single words don't exist)

### Core Vocabulary Standards

#### Essential Game Terms
- **Cycle**: `mI'lugh` (process/procedure)
- **Colony**: `DIch nugh` (organized group)
- **Duplicant**: `nugh chenmoHwI'` (life creator)
- **Building**: `chenmoH` (create/build)
- **Power**: `HoS` (strength/power)
- **Oxygen**: `nugh nugh` (breathing gas)
- **Water**: `bIQ` (water)
- **Food**: `Soj` (food)

#### Compound Word Formation
- Use established patterns: `[noun] + [modifier]` or `[verb] + [suffix]`
- Examples:
  - `HoS chenmoHmeH jan` (power-making device = generator)
  - `Soj chenmoH` (food create = cooking)
  - `bIQ DIch` (water certain = water cooler)

### Consistency Rules
- **Same English term = Same Klingon term** across all contexts
- **Related concepts use related roots** (e.g., all power-related terms use `HoS`)
- **Maintain semantic relationships** in compound words

## 🏗️ Technical Standards

### File Format Requirements
- **Encoding**: UTF-8 without BOM
- **Format**: GNU gettext .po format
- **Line endings**: Unix-style (LF) preferred

### .po File Structure
```
#. STRINGS.CATEGORY.SUBCATEGORY.ITEM.FIELD
msgctxt "STRINGS.CATEGORY.SUBCATEGORY.ITEM.FIELD"
msgid "English text"
msgstr "tlhIngan Hol mugh"
```

### Required Elements
- **Comment line**: `#. [STRING_ID]`
- **Context**: `msgctxt "[STRING_ID]"`
- **Source**: `msgid "[English text]"`
- **Translation**: `msgstr "[Klingon text]"`

## 🎮 Gameplay Considerations

### Preserve Game Functionality
- **Don't lose critical information** in translation
- **Maintain UI layout compatibility** (avoid extremely long phrases)
- **Keep numerical values and formatting** intact
- **Preserve game mechanics understanding**

### Cultural Adaptation Guidelines
- **Adapt concepts to Klingon perspective** when appropriate
- **Maintain game meaning** over cultural purity
- **Use warrior/honor concepts** where contextually relevant
- **Avoid Earth-specific cultural references** when possible

## 📊 Quality Assurance

### Linguistic Review Checklist
- [ ] Uses proper Klingon orthography (correct apostrophes)
- [ ] Follows established vocabulary from glossary
- [ ] Maintains grammatical correctness
- [ ] Preserves semantic consistency with related terms
- [ ] Documents any new vocabulary introduced

### Technical Review Checklist
- [ ] Valid .po file syntax
- [ ] Proper UTF-8 encoding
- [ ] Correct msgctxt usage
- [ ] No formatting errors
- [ ] Maintains string length reasonability

### Gameplay Review Checklist
- [ ] Preserves essential game information
- [ ] Maintains UI usability
- [ ] Doesn't break game mechanics understanding
- [ ] Fits within UI space constraints

## 🔄 Translation Workflow

### For New Translations
1. **Research**: Check if English term exists in current translations
2. **Vocabulary**: Look up canon Klingon words first
3. **Consistency**: Use established project vocabulary
4. **Context**: Consider game context and UI placement
5. **Format**: Follow .po file standards exactly
6. **Review**: Self-check against quality standards

### For Updates/Corrections
1. **Document reason**: Explain why change is needed
2. **Check dependencies**: Look for related terms that need updating
3. **Maintain consistency**: Update all instances of changed terms
4. **Test impact**: Consider UI and gameplay effects

## 📚 Reference Materials

### Primary Sources
- **The Klingon Dictionary** (Marc Okrand) - Ultimate authority
- **Klingon Language Institute** (kli.org) - Official standards
- **Project Glossary** (KLINGON_GLOSSARY.md) - Established vocabulary

### Secondary Sources
- Klingon Language Wiki
- boQwI' Klingon Assistant
- Community dictionaries and phrase books

### Technical References
- GNU gettext documentation
- ONI modding guides
- UTF-8 encoding standards

## ⚠️ Common Pitfalls to Avoid

### Linguistic Errors
- Using ASCII apostrophes instead of typographic ones
- Inconsistent vocabulary for the same concepts
- Ignoring established compound word patterns
- Creating unnecessarily complex phrases

### Technical Errors
- Incorrect .po file formatting
- Missing msgctxt entries
- Encoding issues
- Breaking string formatting codes

### Gameplay Errors
- Losing critical game information
- Creating confusing or ambiguous translations
- Making UI elements unusably long
- Breaking game mechanic understanding

## 🎯 Translation Priorities

### Tier 1: Critical Gameplay
- Core UI elements
- Essential building names
- Basic duplicant needs
- Time/cycle system
- Resource management

### Tier 2: Enhanced Experience  
- Building descriptions
- Tutorial content
- Error messages
- Advanced UI elements

### Tier 3: Complete Experience
- Flavor text and lore
- Achievement descriptions
- Easter eggs and jokes
- Minor UI elements

---

**Remember**: Quality over quantity. Better to have fewer, excellent translations than many poor ones.

**Qapla'!** (Success!)
