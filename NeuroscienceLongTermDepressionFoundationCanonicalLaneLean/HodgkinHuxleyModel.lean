import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermDepressionFoundationCanonicalLaneLean

structure HodgkinHuxleyPackage where
  membraneCapacitance : Type u
  ionChannelDensities : Type v
  sodiumCurrent : Type w
  potassiumCurrent : Type x
  leakageCurrent : Type y
  voltageClampData : Prop
  actionPotentialGenerated : Prop
  membraneCapacitanceClosed : membraneCapacitance
  ionChannelDensitiesClosed : ionChannelDensities
  sodiumCurrentClosed : sodiumCurrent
  potassiumCurrentClosed : potassiumCurrent
  leakageCurrentClosed : leakageCurrent
  voltageClampDataClosed : voltageClampData
  actionPotentialGeneratedClosed : actionPotentialGenerated

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyPackage) where
  voltageClampDataClosed : H.voltageClampData
  actionPotentialGeneratedClosed : H.actionPotentialGenerated

def HodgkinHuxleyClosed (H : HodgkinHuxleyPackage) : Prop :=
  H.voltageClampData ∧ H.actionPotentialGenerated

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyPackage)
    (E : HodgkinHuxleyEvidence H) : HodgkinHuxleyClosed H := by
  exact And.intro E.voltageClampDataClosed E.actionPotentialGeneratedClosed

end NeuroscienceLongTermDepressionFoundationCanonicalLaneLean
end HautevilleHouse