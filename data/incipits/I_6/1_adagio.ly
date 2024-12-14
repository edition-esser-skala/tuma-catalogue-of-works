\version "2.24.2"
\include "header.ly"

TromboneI = {
  \relative c' {
    \clef alto
    \key e \minor \time 3/4 \tempoMarkup "Adagio"
    R2.*3
    r4 g' g
    g( fis) fis
    fis e8 dis e4
    dis r r
  }
}

TromboneII = {
  \relative c' {
    \clef tenor
    \key e \minor \time 3/4 \tempoMarkup "Adagio"
    R2.*3
    r4 h h
    h( a) a
    a g8( fis) g4
    fis r r
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key e \minor \time 3/4 \tempoMarkup "Adagio"
    h'4 e( dis)
    h g'( fis)
    h8( c) h( a) g( fis)
    g fis e4 r
    R2.*2
    fis,4 h( ais)
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key e \minor \time 3/4 \tempoMarkup "Adagio"
    R2.
    h'4 e( dis)
    e2 dis4
    e r r
    R2.*3
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key e \minor \time 3/4 \tempoMarkup "Adagio"
    e2 h'4
    e,2 h'4
    g8 a h4 h,
    e2 e4
    fis2 dis4
    e2 ais,4
    h2 fis'4
  }
}

BassFigures = \figuremode {
  r2 <_+>4
  r2 q4
  <6> <4> <_+>
  r2.
  <9 4>4 <8 3> <5>
  <9 4> <8 3> <7 5>
  <_+> <_!> <_+>
}

\score {
  <<
    \new StaffGroup <<
      \new GrandStaff <<
        \set GrandStaff.instrumentName = "trb"
        \new Staff {
          \set Staff.instrumentName = "1"
          \TromboneI
        }
        \new Staff {
          \set Staff.instrumentName = "2"
          \TromboneII
        }
      >>
    >>
    \new StaffGroup <<
      \new GrandStaff <<
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
    >>
    \new StaffGroup <<
      \new Staff {
        \set Staff.instrumentName = "bc"
        \Continuo
      }
    >>
    \new FiguredBass { \BassFigures }
  >>
}
