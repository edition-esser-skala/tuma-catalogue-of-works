\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \twotwotime \key d \minor \time 2/2 \tempoMarkup "Allebreve / Moderato"
    d'1
    d2 cis
    d2. d4
    a2 c!
    h4 c8 d e4 d
    cis a h cis
    d a d2
    e4 f8 g a4 g
    f d f g
    a e a c,!
    h2. h4
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \twotwotime \key d \minor \time 2/2 \tempoMarkup "Allebreve / Moderato"
    R1*3
    a'1~\f
    a2 gis
    a2. a4
    d,2 f
    e2. e4
    d2 r
    r e'
    d4 c! h e
  }
}

Viola = {
  \relative c' {
    \clef alto
    \twotwotime \key d \minor \time 2/2 \tempoMarkup "Allebreve / Moderato"
    R1*6 %6
    d1~\f
    d2 cis
    d2. d4
    a1~
    a2 gis
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key d \minor \time 2/2 \tempoMarkup "Allebreve / Moderato" \autoBeamOff
    d'2^\tutti d
    d cis4 cis
    d2. d4
    a2 c!
    h4 c8[ d] e4 d
    cis a h cis
    d a d f,
    e1
    d2 r
    r e'
    d4 c! h e
  }
}

SopranoLyrics = \lyricmode {
  Be -- ne --
  di -- ctus es,
  Do -- mi --
  ne, do --
  _ ce me iu --
  sti -- fi -- ca -- ti --
  o -- _ _ nes
  tu --
  as,
  iu --
  sti -- fi -- ca -- "ti -"
}

Alto = {
  \relative c' {
    \clef alto
    \key d \minor \time 2/2 \tempoMarkup "Allebreve / Moderato" \autoBeamOff
    R1*3
    a'2\f a
    a gis4 gis
    a2. a4
    d,2 f
    e4 f8[ g!] a4 g
    f d f g
    a e a c,!
    h1
  }
}

AltoLyrics = \lyricmode {
  Be -- ne --
  di -- ctus es,
  Do -- mi --
  ne, do --
  _ ce me iu --
  sti -- fi -- ca -- ti --
  o -- _ _ nes
  "tu -"
}

Tenore = {
  \relative c' {
    \clef tenor
    \key d \minor \time 2/2 \tempoMarkup "Allebreve / Moderato" \autoBeamOff
    R1*6
    \mvTr d2\f^\tutti d
    d cis4 cis
    d2. d4
    a2 c!
    h4 c8[ d] e4 d
  }
}

TenoreLyrics = \lyricmode {
  Be -- ne --
  di -- ctus es,
  Do -- mi --
  ne, do --
  _ ce me "iu -"
}

Basso = {
  \relative c {
    \clef bass
    \key d \minor \time 2/2 \tempoMarkup "Allebreve / Moderato" \autoBeamOff
    R1*9
    a'2\f a
    a gis4 gis
  }
}

BassoLyrics = \lyricmode {
  Be -- ne --
  di -- ctus es,
}

Organo = {
  \relative c {
    \clef soprano
    \twotwotime \key d \minor \time 2/2 \tempoMarkup "Allebreve / Moderato"
    d''1~-!-\tutti
    d2 cis-!
    d2.-! d4-!
    a2-! << {
      c!
      h4 c8 d e4 d
      cis a h cis
    } \\ {
      a2~
      a gis
      a2. a4
    } >>
    \clef tenor d,1~
    d2 cis
    d2. d4
    \clef bass a1~
    a2 gis
  }
}

BassFigures = \figuremode {
  r1
  r
  r
  r
  r
  r
  <5>1
  <2>2 <6>4 <5>
  r1
  <_!>
  <2!>2 <6 _!>
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
        \set Staff.instrumentName = "vla"
        \Viola
      }
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
