\version "2.24.2"
\include "header.ly"

TromboneI = {
  \relative c' {
    \clef alto
    \key e \minor \time 4/4 \tempoMarkup "Adagio"
    e8-\solo e e e g4 g-\tutti
    fis fis fis8-\solo fis fis fis
    fis4 fis-\tutti e e
    e8-\solo e e e e4 e~-\tutti
    e4. e8 e2
    dis dis8-\solo dis dis fis
  }
}

TromboneII = {
  \relative c' {
    \clef tenor
    \key e \minor \time 4/4 \tempoMarkup "Adagio"
    h8-\solo h h h h4 h~-\tutti
    h h h8-\solo h h h
    h4 h2-\tutti h4
    h8-\solo h h h h4 h~-\tutti
    h4. h8 c2
    fis, h8-\solo h h h
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key e \minor \time 4/4 \tempoMarkup "Adagio"
    h'8 h h h e4 e~
    e dis a8 a a a
    fis'4 fis2 e4
    h8 h h h g'4 e
    e1
    dis2 fis,8 fis fis fis
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key e \minor \time 4/4 \tempoMarkup "Adagio"
    g'8 g g g g4 g
    fis fis fis8 fis fis fis
    a4 a a g
    g8 g g g g4 g
    gis2 a4 ais
    h2 dis,8 dis dis dis
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key e \minor \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    r2 r4 e'~^\tutti
    e dis r2
    r4 a2 g4
    r2 r4 g
    gis4. gis8 a4 ais
    h2 r
  }
}

SopranoLyrics = \lyricmode {
  San --
  ctus,
  san -- ctus,
  san --
  _ ctus, san -- _
  ctus
}

Alto = {
  \relative c' {
    \clef alto
    \key e \minor \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    r2 r4 g'^\tutti
    fis fis r2
    r4 fis2 e4
    r2 r4 e~
    e4. e8 e2
    dis r
  }
}

AltoLyrics = \lyricmode {
  San --
  _ ctus,
  san -- ctus,
  san --
  ctus, san --
  ctus
}

Tenore = {
  \relative c' {
    \clef tenor
    \key e \minor \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    r2 r4 h~^\tutti
    h h r2
    r4 h2 h4
    r2 r4 h~
    h4. h8 c2
    fis, r
  }
}

TenoreLyrics = \lyricmode {
  San --
  ctus,
  san -- ctus,
  san --
  ctus, san --
  ctus
}

Basso = {
  \relative c {
    \clef bass
    \key e \minor \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    r2 r4 e^\tutti
    h' h, r2
    r4 dis e e,
    r2 r4 e'
    d!4. d8 c2
    h r
  }
}

BassoLyrics = \lyricmode {
  San --
  _ ctus,
  san -- _ ctus,
  san --
  _ ctus, san --
  ctus
}

Organo = {
  \relative c {
    \clef bass
    \key e \minor \time 4/4 \tempoMarkup "Adagio"
    e8-\solo e e e e4 e-\tutti
    h' h, dis8-\solo dis dis dis
    dis4 dis-\tutti e e,
    e'8-\solo e e e e4 e-\tutti
    d!2 c
    h h8-\solo h h h
  }
}

BassFigures = \figuremode {
  r1
  <4>4 <_+> <6 5>2
  r <9 4>4 <8 3>
  r1
  <4\+ 2>2 <6>4 <6\\>
  <_+>1
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
