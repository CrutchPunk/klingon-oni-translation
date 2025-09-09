# Klingon Translation Workflow
# tlhIngan Hol mugh mI'

## Phase 1: Core UI Elements (Priority 1)
These are the most visible strings that players see first:

### Main Menu
- New Game / Load Game / Options / Quit
- Tutorial prompts
- Save/Load dialogs

### In-Game HUD
- Resource counters (Oxygen, Power, Food, etc.)
- Cycle/Day counter
- Priority settings
- Speed controls (Pause/1x/2x/3x)

### Basic Commands
- Move, Dig, Build, Research
- Cancel, Confirm, Close
- Yes/No dialogs

## Phase 2: Duplicant Interface (Priority 2)
### Duplicant Panel
- Name, Job, Skills
- Health, Stress, Hunger status
- Traits and attributes
- Schedule assignments

### Jobs & Skills
- Job titles (Researcher, Miner, Cook, etc.)
- Skill names and descriptions
- Experience points and levels

## Phase 3: Buildings & Technology (Priority 3)
### Common Buildings
- Oxygen Diffuser, Water Pump, Generator
- Research Station, Printing Pod
- Food storage, beds, toilets

### Research Tree
- Technology names and descriptions
- Research categories
- Prerequisites and unlocks

## Phase 4: Resources & Elements (Priority 4)
### Basic Elements
- Oxygen, Water, Carbon Dioxide
- Metals, minerals, gases
- Temperature and pressure readings

### Food & Materials
- Food types and descriptions
- Raw materials and refined goods
- Quality ratings and effects

## Phase 5: Advanced Content (Priority 5)
### Late-game Content
- Advanced buildings and technologies
- Space exploration elements
- Complex systems and automation

### Flavor Text
- Duplicant descriptions and backstories
- Building flavor text
- Achievement descriptions

## Translation Strategy

1. **Start Small**: Begin with 50-100 most critical strings
2. **Test Early**: Load mod and verify strings appear correctly
3. **Iterate**: Add more strings in batches of 100-200
4. **Context Matters**: Use game context to ensure accurate translations
5. **Consistency**: Maintain consistent terminology throughout

## File Organization

```
strings/
├── Klingon/
│   ├── ui_core.po          # Main menu, HUD, basic commands
│   ├── duplicants.po       # Duplicant-related strings
│   ├── buildings.po        # Building names and descriptions
│   ├── research.po         # Technology and research
│   ├── resources.po        # Elements, materials, food
│   └── flavor.po           # Descriptions and lore text
```

## Quality Assurance

1. **In-Game Testing**: Verify translations appear correctly
2. **Length Check**: Ensure Klingon text fits in UI elements
3. **Context Review**: Confirm translations make sense in context
4. **Consistency Check**: Verify consistent use of terminology
5. **Community Review**: Get feedback from other Klingon speakers
