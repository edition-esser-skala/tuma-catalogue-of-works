\version "2.24.2"
\include "header.ly"

Cornetto = {
  \relative c' {
    \clef soprano
    \key e \minor \time 4/4 \tempoMarkup "Moderato"
    R1*4
    r4 h'8 h h h16 h c8. c16
    h4 h8 h a4 a8 h
  }
}

TromboneI = {
  \relative c' {
    \clef alto
    \key e \minor \time 4/4 \tempoMarkup "Moderato"
    R1*4
    r4 g'8 g fis g16 g g8 fis
    g4 g8 g g4 fis8 gis
  }
}

TromboneII = {
  \relative c' {
    \clef tenor
    \key e \minor \time 4/4 \tempoMarkup "Moderato"
    R1*4
    r4 e8 e fis e16 e c8. c16
    d!4 d8 d d4 d8 d
  }
}

Fagotto = {
  \relative c {
    \clef bass
    \key e \minor \time 4/4 \tempoMarkup "Moderato"
    R1*4
    r4 e dis8 e a,4
    g g d'4. c16 h
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key e \minor \time 4/4 \tempoMarkup "Moderato"
    R1
    r8 dis' dis([ e)] r2
    r8 dis, dis([ e)] r2
    R1
    r4 h'8 h h h16 h c8. c16
    h4 h8 h a4 a8 h
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key e \minor \time 4/4 \tempoMarkup "Moderato"
    R1
    r8 dis' dis([ e)] r2
    r8 dis, dis([ e)] r2
    R1
    r4 g8 g fis g16 g g8 fis
    g4 g8 g g4 fis8 gis
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key e \minor \time 4/4 \autoBeamOff \tempoMarkup "Moderato"
    R1*4
    r4 h'8^\tutti h h h16 h c8. c16
    h4 h8 h a4 a8 h
  }
}

SopranoLyrics = \lyricmode {
  Ma -- gna o -- pe -- ra Do -- mi --
  ni: Ex -- qui -- si -- ta in
}

Alto = {
  \relative c' {
    \clef alto
    \key e \minor \time 4/4 \autoBeamOff \tempoMarkup "Moderato"
    R1*4
    r4 g'8^\tutti g fis g16 g g8 fis
    g4 g8 g g4 fis8 gis
  }
}

AltoLyrics = \lyricmode {
  Ma -- gna o -- pe -- ra Do -- mi --
  ni: Ex -- qui -- si -- ta in
}

Tenore = {
  \relative c' {
    \clef tenor
    \key e \minor \time 4/4 \autoBeamOff \tempoMarkup "Moderato"
    e4^\solo dis e8 h c h16[ a]
    h8. e,16 e8 e a16[ h] c8 c h16[ a]
    g[ fis] e8 h' gis a8. a16 h8 d
    c16[ h] a c h8 a g fis16[ e] fis4
    e e'8^\tutti e fis e16 e c8. c16
    d!4 d8 d d4 d8 d
  }
}

TenoreLyrics = \lyricmode {
  Con -- fi -- te -- bor ti -- bi,
  Do -- mi -- ne, in to -- to cor -- de
  me -- o, in con -- si -- li -- o iu --
  sto -- rum, et con -- gre -- ga -- ti -- o --
  ne. Ma -- gna o -- pe -- ra Do -- mi --
  ni: Ex -- qui -- si -- ta in
}

Basso = {
  \relative c {
    \clef bass
    \key e \minor \time 4/4 \autoBeamOff \tempoMarkup "Moderato"
    R1*3
    r2 r4 h'8^\tutti h
    h8. e,16 e4 dis8 e16 e a,8. a16 %5
    g4 g8 g d'4 d8 c16[ h]
  }
}

BassoLyrics = \lyricmode {
  Ma -- gna
  o -- pe -- ra, o -- pe -- ra Do -- mi --
  ni: Ex -- qui -- si -- ta in
}

Organo = {
  \relative c {
    \clef bass
    \key e \minor \time 4/4 \tempoMarkup "Moderato"
    e8-\solo g h a g4 a8 fis
    g4 r8 g fis e dis4
    e r8 e16 d c4 h8 e
    a,4 g!8 a h2
    e,4 e'-\tutti dis8 e a,4
    g g d'4. c16 h
  }
}

BassFigures = \figuremode {
  r8 <6> <_+>4 <6>2
  q <5!>8 <6> <7> <6>16 <5>
  r4. <_+>8 <6>4 <7>8 <_+>
  r2 <6! 4>4 <5 _+>
  r2 r4 <7>8 <6>
  r2 <4>4 <3>8 <5\+>16 <6\\>
}

\score {
  <<
    \new StaffGroup <<
      \new Staff \with { \smallStaffDistance } {
        \set Staff.instrumentName = "cnto"
        \Cornetto
      }
      \new GrandStaff \with { \smallGroupDistance } <<
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
      \new Staff {
        \set Staff.instrumentName = "fag"
        \Fagotto
      }
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
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = "S"
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }
      \new Lyrics \lyricsto Soprano \SopranoLyrics

      \new Staff {
        \set Staff.instrumentName = "A"
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics

      \new Staff {
        \set Staff.instrumentName = "T"
        \new Voice = "Tenore" { \dynamicUp \Tenore }
      }
      \new Lyrics \lyricsto Tenore \TenoreLyrics

      \new Staff {
        \set Staff.instrumentName = "B"
        \new Voice = "Basso" { \dynamicUp \Basso }
      }
      \new Lyrics \lyricsto Basso \BassoLyrics
    >>
    \new StaffGroup <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "org" "b" }
        \Organo
      }
    >>
    \new FiguredBass { \BassFigures }
  >>
}
