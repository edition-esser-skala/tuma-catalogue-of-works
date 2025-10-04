\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key g \minor \time 4/4 \tempoMarkup "Adagio"
    d'16 b'( a g) r b( a g) a d, d d d d d d
    r a'( g fis) r c'( b a) b g, g g g g g g
    r es'( d es) r cis cis( e) d d, d d d d d d
    r d'( c d) r h h( d) c c, c c c c c c
    cis' cis, cis cis cis cis cis cis cis'( d e d) cis( b a g)
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key g \minor \time 4/4 \tempoMarkup "Adagio"
    b'8 b b b a a a a
    d d d fis \kneeBeam g b,, b b
    b' b a a a a, a a
    a' a g g g g, es' es
    e e e e e e e e
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key g \minor \time 4/4 \tempoMarkup "Adagio"
    g'4 g fis fis
    d d g, g
    g' g f! f,
    f' f es! c
    b! b a cis
  }
}

BassFigures = \figuremode {
  % tacet
}

\score {
  <<
    \new StaffGroup <<
      \new GrandStaff \with { \smallGroupDistance } <<
        \set GrandStaff.instrumentName = "vl"
        \new Staff {
          \set Staff.instrumentName = "1"
          \ViolinoI
        }
        \new Staff {
          \set Staff.instrumentName = "2"
          \ViolinoII
        }
      >>
      \new Staff {
        \set Staff.instrumentName = "bc"
        \Continuo
      }
    >>
    \new FiguredBass { \BassFigures }
  >>
}
