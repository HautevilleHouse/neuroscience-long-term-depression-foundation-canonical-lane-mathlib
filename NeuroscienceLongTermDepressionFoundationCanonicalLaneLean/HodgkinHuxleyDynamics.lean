import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermDepressionFoundationCanonicalLaneLean

structure HodgkinHuxleyPackage where
  membranePotential : Type u
  sodiumChannel : Prop
  potassiumChannel : Prop
  leakChannel : Prop
  actionPotentialGenerated : Prop
  ionConductancesAdjusted : Prop

structure HodgkinHuxleyEvidence (M : HodgkinHuxleyPackage) where
  membranePotentialClosed : M.membranePotential = ℝ
  sodiumChannelClosed : M.sodiumChannel
  potassiumChannelClosed : M.potassiumChannel
  leakChannelClosed : M.leakChannel
  actionPotentialGeneratedClosed : M.actionPotentialGenerated
  ionConductancesAdjustedClosed : M.ionConductancesAdjusted

def HodgkinHuxleyClosed (M : HodgkinHuxleyPackage) : Prop :=
  M.sodiumChannel ∧ M.potassiumChannel ∧ M.leakChannel ∧
  M.actionPotentialGenerated ∧ M.ionConductancesAdjusted

theorem hodgkin_huxley_closed_from_evidence (M : HodgkinHuxleyPackage) (E : HodgkinHuxleyEvidence M) : HodgkinHuxleyClosed M := by
  exact And.intro E.sodiumChannelClosed (And.intro E.potassiumChannelClosed (And.intro E.leakChannelClosed (And.intro E.actionPotentialGeneratedClosed E.ionConductancesAdjustedClosed)))

end NeuroscienceLongTermDepressionFoundationCanonicalLaneLean
end HautevilleHouse