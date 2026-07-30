import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermDepressionFoundationCanonicalLaneLean

def ConstrainedLTDClosure (A : NeuralAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_ltd_endgame (A : NeuralAdmissibleClass) :
    ConstrainedLTDClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end NeuroscienceLongTermDepressionFoundationCanonicalLaneLean
end HautevilleHouse