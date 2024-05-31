\version "2.24.2"
\include "header.ly"

Cornetto = {
  \relative c' {
    \clef soprano
    \key a \minor \time 4/4 \tempoMarkup "Grave"
    r2 r4 c'
    e2 cis4 cis
    d dis e8. e16 e4
    r8 e, gis h d8. d16 d4
    cis4. h8 ais4 h
  }
}

TromboneI = {
  \relative c' {
    \clef alto
    \key a \minor \time 4/4 \tempoMarkup "Grave"
    r2 r4 e
    e a e2
    f4 a gis8. gis16 gis4
    r2 r8 h h h
    a8. a16 e4 fis fis
  }
}

TromboneII = {
  \relative c' {
    \clef tenor
    \key a \minor \time 4/4 \tempoMarkup "Grave"
    r4 a c2
    c b
    a4 a h8. h16 h4
    r2 r8 e e e
    e8. e16 e4 e d
  }
}

Fagotto = {
  \relative c {
    \clef bass
    \key a \minor \time 4/4 \tempoMarkup "Grave"
    r4 a a'2
    a g
    f e
    r r8 gis gis gis
    g2 fis
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key a \minor \time 4/4 \tempoMarkup "Grave"
    r2 r4 c'
    e2 cis
    d4 dis e2
    r8 e, gis h d2
    cis4. h8 ais4 h
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key a \minor \time 4/4 \tempoMarkup "Grave"
    r2 r4 e
    e a e2
    f4 a gis2
    r r8 h h h
    a4 e cis d8 e
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key a \minor \time 4/4 \autoBeamOff \tempoMarkup "Grave"
    r2 r4 c'
    e2 cis4 cis
    d dis e8. e16 e4
    r8 e, gis h d8. d16 d4
    cis4. h8 ais4 h
  }
}

SopranoLyrics = \lyricmode {
  O
  ma -- gnum, ma --
  gnum my -- ste -- ri -- um,
  o ad -- mi -- ra -- bi -- le
  sa -- cra -- "men -"
}

Alto = {
  \relative c' {
    \clef alto
    \key a \minor \time 4/4 \autoBeamOff \tempoMarkup "Grave"
    r2 r4 e
    e a e2
    f4 a gis8. gis16 gis4
    r2 r8 h h h
    a8. a16 e4 fis fis
  }
}

AltoLyrics = \lyricmode {
  O
  ma -- gnum, ma --
  gnum my -- ste -- ri -- um,
  o ad -- mi --
  ra -- bi -- le sa -- "cra -"
}

Tenore = {
  \relative c' {
    \clef tenor
    \key a \minor \time 4/4 \autoBeamOff \tempoMarkup "Grave"
    r4 a c2
    c b
    a4 a h8. h16 h4
    r2 r8 e e e
    e8. e16 e4 e d
  }
}

TenoreLyrics = \lyricmode {
  O ma --
  gnum, ma --
  gnum my -- ste -- ri -- um,
  o ad -- mi --
  ra -- bi -- le sa -- "cra -"
}

Basso = {
  \relative c {
    \clef bass
    \key a \minor \time 4/4 \autoBeamOff \tempoMarkup "Grave"
    r4 a a'2
    a g
    f4 f e8. e16 e4
    r2 r8 gis gis gis
    g8. g16 g4 fis fis
  }
}

BassoLyrics = \lyricmode {
  O ma --
  gnum, ma --
  gnum my -- ste -- ri -- um,
  o ad -- mi --
  ra -- bi -- le sa -- "cra -"
}

Organo = {
  \relative c {
    \clef bass
    \key a \minor \time 4/4 \tempoMarkup "Grave"
    r4 a a'2
    a g
    f e
    r r8 gis gis gis
    g2 fis
  }
}

BassFigures = \figuremode {
  r1
  r2 <6 4\+ _->
  <6>4 <6\\> <_+>2
  r r8 <6 5!>4.
  <6 4\+ 2>2 <7 _+>4 <6 4>
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
