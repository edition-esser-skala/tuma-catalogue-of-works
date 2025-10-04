\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key g \minor \time 3/4 \tempoMarkup "Andante"
    r4 r8 d' g b
    a d, d4. d8
    g c, c4. c8
    f b, b4. b8
    es16( d) es8 es16( d) es8 es16( d) es8
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key g \minor \time 3/4 \tempoMarkup "Andante"
    b'16( a) b8 b16( a) b8 b16( a) b8
    a16( g) a8 a16( g) a8 a16( g) a8
    g16( fis) g8 g16( \hA fis) g8 g16( \hA fis) g8
    f16( es) f8 f16( es) f8 f16( es) f8
    r8 c' es a, a4
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key g \minor \time 3/4 \tempoMarkup "Andante"
    g'4 g g
    f f f
    es es es
    d d d
    c c c
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
