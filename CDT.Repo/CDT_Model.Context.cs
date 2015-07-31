﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CDT.Repo
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class CDTEntities : DbContext
    {
        public CDTEntities()
            : base("name=CDTEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Capacitor> Capacitors { get; set; }
        public virtual DbSet<CapacitorMnf> CapacitorMnfs { get; set; }
        public virtual DbSet<Component> Components { get; set; }
        public virtual DbSet<Connector> Connectors { get; set; }
        public virtual DbSet<ConnectorMnf> ConnectorMnfs { get; set; }
        public virtual DbSet<Diode> Diodes { get; set; }
        public virtual DbSet<DiodeMnf> DiodeMnfs { get; set; }
        public virtual DbSet<Fuse> Fuses { get; set; }
        public virtual DbSet<FuseMnf> FuseMnfs { get; set; }
        public virtual DbSet<IC> ICs { get; set; }
        public virtual DbSet<ICMnf> ICMnfs { get; set; }
        public virtual DbSet<Inductor> Inductors { get; set; }
        public virtual DbSet<InductorMnf> InductorMnfs { get; set; }
        public virtual DbSet<Mechanical> Mechanicals { get; set; }
        public virtual DbSet<MechanicalMnf> MechanicalMnfs { get; set; }
        public virtual DbSet<Misc> Miscs { get; set; }
        public virtual DbSet<MiscMnf> MiscMnfs { get; set; }
        public virtual DbSet<Optoelectronic> Optoelectronics { get; set; }
        public virtual DbSet<OptoelectronicsMnf> OptoelectronicsMnfs { get; set; }
        public virtual DbSet<Oscillator> Oscillators { get; set; }
        public virtual DbSet<OscillatorsMnf> OscillatorsMnfs { get; set; }
        public virtual DbSet<Potentiometer> Potentiometers { get; set; }
        public virtual DbSet<PotentiometerMnf> PotentiometerMnfs { get; set; }
        public virtual DbSet<Relay> Relays { get; set; }
        public virtual DbSet<RelayMnf> RelayMnfs { get; set; }
        public virtual DbSet<Resistor> Resistors { get; set; }
        public virtual DbSet<ResistorMnf> ResistorMnfs { get; set; }
        public virtual DbSet<Switch> Switches { get; set; }
        public virtual DbSet<SwitchMnf> SwitchMnfs { get; set; }
        public virtual DbSet<Thermistor> Thermistors { get; set; }
        public virtual DbSet<ThermistorMnf> ThermistorMnfs { get; set; }
        public virtual DbSet<Transformer> Transformers { get; set; }
        public virtual DbSet<TransformerMnf> TransformerMnfs { get; set; }
        public virtual DbSet<Transistor> Transistors { get; set; }
        public virtual DbSet<TransistorMnf> TransistorMnfs { get; set; }
        public virtual DbSet<User> Users { get; set; }
        public virtual DbSet<Wire> Wires { get; set; }
        public virtual DbSet<WiresMnf> WiresMnfs { get; set; }
    }
}
