import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialGeometryImmersionsMinimalPrescribedCanonicalLaneLean.MinimalSurfacePackage

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedCanonicalLaneLean

structure WeierstrassData (I : ImmersionPackage) where
  complexCoordinate : Type y
  holomorphicFunction : complexCoordinate → ℂ
  meromorphicFunction : complexCoordinate → ℂ
  conformalFactor : complexCoordinate → ℝ
  weierstrassFormulas : Prop
  weierstrassFormulasTerm : weierstrassFormulas

structure WeierstrassDataEvidence {I : ImmersionPackage} (W : WeierstrassData I) where
  weierstrassFormulasClosed : W.weierstrassFormulas

def WeierstrassDataClosed {I : ImmersionPackage} (W : WeierstrassData I) : Prop :=
  W.weierstrassFormulas

theorem weierstrass_data_closed_from_evidence {I : ImmersionPackage} (W : WeierstrassData I) (E : WeierstrassDataEvidence W) : WeierstrassDataClosed W := by
  exact E.weierstrassFormulasClosed

end DifferentialGeometryImmersionsMinimalPrescribedCanonicalLaneLean
end HautevilleHouse