# Contributing to tlhIngan Hol ONI Translation

Thank you for your interest in contributing to the Klingon translation of Oxygen Not Included!

## 🎯 How to Contribute

### 1. Choose Your Translation Area

**High Priority (Most Needed):**
- Building descriptions and tooltips
- Tutorial and help content
- Error messages and system alerts

**Medium Priority:**
- Advanced UI elements
- Codex entries and database content
- Achievement descriptions

**Low Priority:**
- Flavor text and lore
- Minor UI elements
- Easter eggs and jokes

### 2. Before You Start

1. **Check existing work**: Review [strings.po](strings.po) to avoid duplicating translations
2. **Study the glossary**: Use established vocabulary from [KLINGON_GLOSSARY.md](KLINGON_GLOSSARY.md)
3. **Follow standards**: Read [TRANSLATION_STANDARDS.md](TRANSLATION_STANDARDS.md)
4. **Check issues**: Look for open translation requests

### 3. Translation Process

#### Finding Strings to Translate
1. Look at the German reference mod for complete string lists
2. Check GitHub issues for specific translation requests
3. Focus on untranslated `msgid` entries in strings.po

#### Making Translations
1. Fork the repository
2. Create a feature branch: `git checkout -b translate-buildings`
3. Add translations following this format:
   ```
   #. STRINGS.BUILDINGS.PREFABS.EXAMPLE.NAME
   msgctxt "STRINGS.BUILDINGS.PREFABS.EXAMPLE.NAME"
   msgid "Example Building"
   msgstr "DIch chenmoH"
   ```
4. Test your translations if possible
5. Submit a pull request

### 4. Translation Guidelines

#### Vocabulary Standards
- **Use canon words first**: Check official Klingon dictionary
- **Follow established patterns**: Use existing compound word structures
- **Maintain consistency**: Use the same Klingon term for the same English concept
- **Document new terms**: Add new vocabulary to the glossary

#### Technical Requirements
- **Encoding**: UTF-8 only
- **Apostrophes**: Use typographic apostrophes (U+2019) not ASCII (')
- **Format**: Follow GNU gettext .po format exactly
- **Context**: Include msgctxt for all translations

#### Cultural Adaptation
- **Maintain game meaning**: Don't lose gameplay information
- **Klingon perspective**: Adapt concepts to Klingon cultural context when appropriate
- **Clarity over poetry**: Prioritize understanding over literary beauty

## 📝 Pull Request Guidelines

### PR Title Format
- `Add [system] translations` (e.g., "Add building translations")
- `Fix [specific issue]` (e.g., "Fix oxygen system terminology")
- `Update glossary with [new terms]`

### PR Description Should Include
- Number of strings translated
- Systems/areas covered
- Any new vocabulary introduced
- Testing notes (if applicable)

### Review Process
1. Linguistic review for Klingon authenticity
2. Technical review for .po format compliance
3. Gameplay testing when possible
4. Community feedback period for major additions

## 🔍 Quality Standards

### Linguistic Quality
- **Grammar**: Follow Klingon grammar rules
- **Vocabulary**: Prefer canon words, document constructed terms
- **Consistency**: Use established terminology
- **Authenticity**: Maintain Klingon language character

### Technical Quality
- **Format**: Valid .po file syntax
- **Encoding**: Proper UTF-8 with correct apostrophes
- **Context**: Appropriate msgctxt usage
- **Testing**: Verify translations display correctly in-game

## 🐛 Reporting Issues

### Translation Errors
- Incorrect Klingon grammar
- Inconsistent terminology
- Missing context or unclear meaning

### Technical Issues
- File format problems
- Encoding issues
- Mod loading errors

### Enhancement Requests
- New translation priorities
- Vocabulary discussions
- Workflow improvements

## 📚 Resources for Contributors

### Klingon Language Resources
- [Klingon Language Institute](https://www.kli.org/)
- The Klingon Dictionary (Marc Okrand)
- [Klingon Language Wiki](https://klingon.wiki/)
- [boQwI' Klingon Language Assistant](https://github.com/De7vID/klingon-assistant-data)

### ONI Modding Resources
- [ONI Modding Documentation](https://oni-db.com/modding)
- [Steam Workshop](https://steamcommunity.com/app/457140/workshop/)
- Reference translation mods for format examples

### Development Tools
- Text editor with UTF-8 support
- Git for version control
- ONI game for testing translations

## 🏆 Recognition

Contributors will be recognized in:
- Repository contributors list
- Mod credits and documentation
- Community acknowledgments

Major contributors may be invited to join the core translation team.

## 💬 Communication

- **GitHub Issues**: For specific translation requests and bug reports
- **GitHub Discussions**: For vocabulary debates and general questions
- **Pull Request Comments**: For review feedback and collaboration

## 📋 Contributor Checklist

Before submitting your first contribution:

- [ ] Read this contributing guide
- [ ] Review the glossary and translation standards
- [ ] Set up your development environment
- [ ] Fork the repository
- [ ] Test the mod installation process
- [ ] Join relevant community discussions

---

**Qapla'! bagh DIch!** (Success! Contribute well!)

Thank you for helping bring Oxygen Not Included to the Klingon language community!
