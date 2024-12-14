\version "2.24.2"
\include "header.ly"

TromboneI = {
  \relative c' {
    \clef alto
    \key e \minor \time 4/4 \tempoMarkup "Allegretto"
    R1*6
  }
}

TromboneII = {
  \relative c' {
    \clef tenor
    \key e \minor \time 4/4 \tempoMarkup "Allegretto"
    R1*6
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \time 4/4 \tempoMarkup "Allegretto"
    h''2 c
    dis, e8 h e fis
    g e, r4 r8 h'' h h
    cis cis cis h16 cis d8 cis h4~
    h a!2 g4
    fis2\trill e4 g,8 e
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key e \minor \time 4/4 \tempoMarkup "Allegretto"
    R1*2
    e'2 g
    ais, h4. g'8
    e4 fis8 e dis4 e~
    e dis r8 e e e
  }
}

Continuo = {
  \relative c {
    \clef bass
    \key e \minor \time 4/4 \tempoMarkup "Allegretto"
    r8 e fis g a a, a'4~
    a g8 fis g4. fis8
    e c' h a g e16 fis g4
    fis fis, h r
    R1
    h'2 c
  }
}

BassFigures = \figuremode {
  r1
  <4\+ 2>4 <\t \t>8 <6\\> <6>2
  r1
  <5\+ _+>
  r
  <5 4>4 <\t _+> r2
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
