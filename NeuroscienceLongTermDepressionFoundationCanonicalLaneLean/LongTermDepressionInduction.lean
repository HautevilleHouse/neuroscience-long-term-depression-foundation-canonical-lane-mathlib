import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceLongTermDepressionFoundationCanonicalLaneLean.HodgkinHuxleyModel

namespace HautevilleHouse
namespace NeuroscienceLongTermDepressionFoundationCanonicalLaneLean

structure LTDPackage {H : HodgkinHuxleyPackage} where
  presynapticStimulation : Prop
  postsynapticDepolarization : Prop
  calciumInflux : Prop
  phosphataseActivation : Prop
  ampaReceptorEndocytosis : Prop
  ltdInduced : Prop
  presynapticStimulationClosed : presynapticStimulation
  postsynapticDepolarizationClosed : postsynapticDepolarization
  calciumInfluxClosed : calciumInflux
  phosphataseActivationClosed : phosphataseActivation
  ampaReceptorEndocytosisClosed : ampaReceptorEndocytosis
  ltdInducedClosed : ltdInduced

structure LTDEvidence {H : HodgkinHuxleyPackage} (L : LTDPackage H) where
  calciumInfluxClosed : L.calciumInflux
  phosphataseActivationClosed : L.phosphataseActivation
  ampaReceptorEndocytosisClosed : L.ampaReceptorEndocytosis
  ltdInducedClosed : L.ltdInduced

def LTDClosed {H : HodgkinHuxleyPackage} (L : LTDPackage H) : Prop :=
  L.calciumInflux ∧ L.phosphataseActivation ∧ L.ampaReceptorEndocytosis ∧ L.ltdInduced

theorem ltd_closed_from_evidence {H : HodgkinHuxleyPackage} (L : LTDPackage H)
    (E : LTDEvidence L) : LTDClosed L := by
  exact And.intro E.calciumInfluxClosed
    (And.intro E.phosphataseActivationClosed
      (And.intro E.ampaReceptorEndocytosisClosed E.ltdInducedClosed))

end NeuroscienceLongTermDepressionFoundationCanonicalLaneLean
end HautevilleHouse